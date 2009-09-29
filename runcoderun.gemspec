# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{runcoderun}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rob Sanheim"]
  s.date = %q{2009-09-29}
  s.description = %q{runcoderun command line gem}
  s.email = %q{rsanheim@gmail.com}
  s.executables = ["rcr", "runcoderun"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "bin/rcr",
     "bin/runcoderun",
     "examples/example_helper.rb",
     "examples/runcoderun_example.rb",
     "features/runcoderun.feature",
     "features/step_definitions/runcoderun_steps.rb",
     "features/support/env.rb",
     "lib/commands/commands.rb",
     "lib/runcoderun.rb",
     "runcoderun.gemspec",
     "version.yml"
  ]
  s.homepage = %q{http://github.com/rsanheim/runcoderun-gem}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{thinkrelevance}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{runcoderun command line gem}
  s.test_files = [
    "examples/example_helper.rb",
     "examples/runcoderun_example.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
