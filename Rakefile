require "rubygems"
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "i18n_action_mailer"
    gemspec.summary = "Action mailer with i18n options"
    gemspec.description = "ActionMailer to use the I18n library without affecting the controllers language"
    gemspec.email = "matsumura.aki@gmail.com"
    gemspec.homepage = "http://github.com/mataki/i18n_action_mailer"
    gemspec.authors = ["Akihiro Matsumura", "Bert Goethals"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

desc 'Default: run unit tests.'
task :default => :test

require 'rake/testtask'
desc 'Test the i18n_action_mailer plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

require 'rake/rdoctask'
desc 'Generate documentation for the i18n_action_mailer plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'I18nActionMailer'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
