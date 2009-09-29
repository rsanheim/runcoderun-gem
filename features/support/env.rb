$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'runcoderun'

require 'micronaut/expectations'

World(Micronaut::Matchers)
