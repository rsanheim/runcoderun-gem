require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "runcoderun"
    gem.summary = %Q{runcoderun command line gem}
    gem.description = %Q{runcoderun command line gem}
    gem.email = "rsanheim@gmail.com"
    gem.homepage = "http://github.com/rsanheim/runcoderun-gem"
    gem.authors = ["Rob Sanheim"]
    gem.add_dependency "launchy"
    gem.add_development_dependency "mocha"
    gem.add_development_dependency "micronaut"
    gem.rubyforge_project = 'thinkrelevance'
  end
  Jeweler::RubyforgeTasks.new do |rubyforge|
    rubyforge.doc_task = "rdoc"
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'micronaut/rake_task'
Micronaut::RakeTask.new(:examples) do |examples|
  examples.pattern = 'examples/**/*_example.rb'
  examples.ruby_opts << '-Ilib -Iexamples'
end

Micronaut::RakeTask.new(:rcov) do |examples|
  examples.pattern = 'examples/**/*_example.rb'
  examples.rcov_opts = '-Ilib -Iexamples'
  examples.rcov = true
end

begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)
rescue LoadError
  task :features do
    abort "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
  end
end

task :default => :examples

task :release => ["examples"]

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "runcoderun-gem #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
