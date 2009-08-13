$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'runcoderun-gem'

require 'micronaut/expectations'

World(Micronaut::Matchers)
