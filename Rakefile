#Fichero de Rakefile para Guard

$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutar las espectativas de la clase Fraccion"
task :spec do
  sh "rspec -I. spec/Matriz_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/Matriz_spec.rb --format documentation"
end

desc "Run /lib/frac_main.rb"
task :bin do
  sh "rspec -I. lib/main.rb"
end

desc "Ejecutar test con --format: html"
task :thtml do
  sh "rspec -I. spec/Matriz_spec.rb --format html > Matriz_spec.html"
end