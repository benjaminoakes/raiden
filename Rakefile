require 'bundler/gem_tasks'

task :default => "test"
task :test => ["test:units"]

namespace "test" do
  task :units do
    require 'rake/runtest'
    Rake.run_tests "test/**/*_test.rb"
  end
end
