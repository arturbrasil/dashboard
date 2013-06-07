# encoding: utf-8
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
	trash = ["n-a"]
    trash.each {|t| apps.delete t}

    ## Gerando gráficos
    class Renderer < OpenStruct
      def render(template)
        ERB.new(template).result(binding)
      end
    end

    system "rm -rf graph_templates/dashboards && mkdir graph_templates/dashboards"

    app_properties = {
        portal: {
            name: "Portal",
            description: "Frontend das lojas, consiste na home, departamentos, categorias, busca, página de produto, etc."
        },
        admin: {
            name: "Portal Admin",
            description: "Módulo administrativo do frontend das lojas"
        },
        a: {
            name: "Portal Admin/a",
            description: "Extensão do módulo administrativo do frontend das lojas"
        },
        admsvc: {
            name: "Admin Web Services",
            description: "Webservices (antigos) de integração com o frontend / módulo administrativo das lojas"
        },
        ptlapi: {
            name: "Portal APIs",
            description: "APIs de integração (novas) com o frontend / módulo administrativo das lojas"
        },
        rnbwp: {
            name: "Rates and Benefits",
            description: "Sistema de cálculo de taxas e benefícios"
        },
        lmngr: {
            name: "Sistema de Autorização",
            description: "Valida quem tem acesso a que e aonde"
        },
        pfsys: {
            name: "Gerenciador de Perfil de Usuário",
            description: "Sistema gerenciador de informações de perfil de usuário"
        },
        sno: {
            name: "Shipping Notification",
            description: "Shipping Notification"
        }
    }

    apps.each do |app, env_hash|
        system "mkdir -p graph_templates/dashboards/#{app}"
        
        # Yaml de configuração dos gráficos genéricos
        f = File.new("graph_templates/dashboards/#{app}/dash.yaml", 'w')
        
        versions = Set.new.tap do |v|
            env_hash.each_value {|version_set| v.merge version_set }
        end

        _name = app_properties[app.to_sym][:name] rescue app
        _description = app_properties[app.to_sym][:description] rescue app
        r = Renderer.new({app: app, envs: env_hash.keys, versions: versions.to_a, description: _description, app_name: _name})
        f.puts r.render(File.open("templates/dash.yaml.erb", "r").read)
        
        # Gráficos genéricos
        system "cp templates/timers.graph templates/all_responses.graph templates/backend_responses.graph graph_templates/dashboards/#{app}/"

        # Gráficos de cada env/version
        env_hash.each do |env, version_set|
            version_set.each do |version|
                output_filename = "#{env}-#{version}.graph"
                f = File.new("graph_templates/dashboards/#{app}/#{output_filename}", 'w')
                r = Renderer.new({env: env, version: version})
                f.puts r.render(File.open("templates/template.graph.erb", "r").read)
                f.close
            end
        end

    end
end
