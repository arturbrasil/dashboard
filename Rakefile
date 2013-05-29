require 'rake/clean'
require 'rubygems'
require 'rubygems/package_task'
require 'json'
require 'open-uri'

spec = eval(File.read('gdash.gemspec'))

Gem::PackageTask.new(spec) do |pkg|
end

desc "Pegar index.json com todas as metricas e criar dashboards"
task :metrics do
	trash = ["a", "n-a"]
	metrics_path = "http://ec2-54-224-232-60.compute-1.amazonaws.com:8085/metrics/index.json"
	matcher = /^stats.timers.MireVeja.deliver.(vtex.io|[^.]+).([^.]+)/
	
	apps = Hash.new{|hash, key| hash[key] = Set.new}
	all_metrics = open metrics_path
    parsed = JSON.parse(all_metrics.read)

    parsed.each do |metric|
    	metric.scan(matcher) { |app, env| apps[app.to_s] << env.to_s }
    end    
    trash.each {|t| apps.delete t}
end
