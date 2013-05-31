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
task :metrics do
	trash = ["a", "n-a"]
	metrics_path = "http://ec2-54-224-232-60.compute-1.amazonaws.com:8085/metrics/index.json"
	matcher = /^stats.timers.MireVeja.deliver.(vtex.io|[^.]+).([^.]+).(n-a|\d*.\d*.\d*)/
	
    # apps[app][env] => [version1, version2, ...]
    apps = Hash.new{|hash, key| hash[key] = Hash.new{|hash, key| hash[key] = Set.new}}

	all_metrics = open metrics_path
    parsed = JSON.parse(all_metrics.read)

    parsed.each do |metric|
    	metric.scan(matcher) { |app, env, version| apps[app.to_s][env.to_s] << version}
    end    

    trash.each {|t| apps.delete t}
    #pp apps
    # apps.each do |app_name, env_hash|
    #     puts app_name
    #     env_hash.each do |env_name, version_set|
    #         puts "--> #{env_name}"
    #         version_set.each{|version| puts "----> #{version}"}
    #     end
    # end

    class Renderer < OpenStruct
      def render(template)
        ERB.new(template).result(binding)
      end
    end
    
    system "rm -rf output && mkdir output"
    apps.each do |app_name, env_hash|
        system "mkdir -p output/MireVeja/#{app_name}"
        Dir["templates/*.erb"].each do |template|
            output_filename = template.scan(/templates\/(\w*.\w*).erb/)[0][0]
            f = File.new("output/MireVeja/#{app_name}/#{output_filename}", 'w')
            r = Renderer.new({app: app_name, env: env_hash})
            f.puts r.render(File.open(template, "r").read)
            f.close
        end
    end


end
