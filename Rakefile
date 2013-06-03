require 'rake/clean'
require 'rubygems'
require 'rubygems/package_task'
require 'json'
require 'open-uri'
require 'erb'
require 'ostruct'

spec = eval(File.read('gdash.gemspec'))

Gem::PackageTask.new(spec) do |pkg|
end

desc "Pegar index.json com todas as metricas e criar dashboards"
task :charts do
    ## Recolhendo métricas via json do graphite
    metrics_path = "http://ec2-54-224-232-60.compute-1.amazonaws.com:8085/metrics/index.json"
    matcher = /^stats.timers.MireVeja.deliver.(vtex.io|[^.]+).([^.]+).(n-a|\d*.\d*.\d*)/
    
    # apps[app][env] => [version1, version2, ...]
    apps = Hash.new{|hash, key| hash[key] = Hash.new{|hash, key| hash[key] = Set.new}}

    all_metrics = open metrics_path
    parsed = JSON.parse(all_metrics.read)

    parsed.each do |metric|
        metric.scan(matcher) { |app, env, version| apps[app.to_s][env.to_s] << version}
    end    

    ## Removendo lixos que vem do statsd
	trash = ["a", "n-a"]
    trash.each {|t| apps.delete t}

    ## Gerando gráficos
    class Renderer < OpenStruct
      def render(template)
        ERB.new(template).result(binding)
      end
    end
    
    system "rm -rf graph_templates/dashboards && mkdir graph_templates/dashboards"
    apps.each do |app_name, env_hash|
        system "mkdir -p graph_templates/dashboards/#{app_name}"
        
        # Yaml de configuração dos gráficos genéricos
        f = File.new("graph_templates/dashboards/#{app_name}/dash.yaml", 'w')
        versions = Set.new.tap do |v|
            env_hash.each_value {|version_set| v.merge version_set }
        end
        r = Renderer.new({app: app_name, envs: env_hash.keys, versions: versions.to_a})
        f.puts r.render(File.open("templates/dash.yaml.erb", "r").read)
        
        # Gráficos genéricos
        system "cp templates/timers.graph templates/all_responses.graph templates/backend_responses.graph graph_templates/dashboards/#{app_name}/"

        # Gráficos de cada env/version
        env_hash.each do |env, version_set|
            version_set.each do |version|
                output_filename = "#{env}-#{version}.graph"
                f = File.new("graph_templates/dashboards/#{app_name}/#{output_filename}", 'w')
                r = Renderer.new({env: env, version: version})
                f.puts r.render(File.open("templates/template.graph.erb", "r").read)
                f.close
            end
        end

    end
end
