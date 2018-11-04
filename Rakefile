require 'rake/testtask'

begin
  require 'bundler/gem_tasks'
rescue Exception
end

Rake::TestTask.new('test') do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.test_files = FileList['test/**/*_test.rb']
  t.verbose = true
end

task default: 'test'

namespace :docker do
  task :test do
    root_dir = File.expand_path("..", __FILE__)
    sh "docker", "run", "-it", "--rm", "-v", "#{root_dir}:/tmp/iruby", "rubydata/base", "/bin/bash", "/tmp/iruby/docker-test.sh"
  end
end
