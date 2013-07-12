require "bundler/capistrano"
require 'rvm/capistrano'
load 'deploy/assets'

default_run_options[:pty] = true
set :application, "openbook"
set :rvm_type, :user
set :keep_releases, 5
set :repository, "git@github.com:itbakery/openbook.git"
set :user, "deploy"
set :scm, :git
set :run_method, :run
set :deploy_to, "/home/deploy/#{application}"
set :deloy_via, :remote_cache
set :scm_verbose,true
set :branch, "master"

#==== intetration with capistrano
#$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
#set :rvm_type, :system
#set :rvm_ruby_string, ENV['GEM_HOME'].gsub(/.*\//,"")
set :rvm_ruby_string, 'ruby-1.9.3-p429@openbook'
#set :rvm_ruby_string, 'ruby-1.9.3'
#set :rvm_type, :user
#set :rvm_bin_path, "/home/deploy/.rvm/bin"
#before 'deploy', 'rvm:create_gemset'
#set :rvm_ruby_string, "ruby-1.9.3-p429@openbook"
#set :rvm_ruby_string, "ruby-1.9.3-p392"
#set :rvm_ruby_string, ENV['GEM_HOME'].gsub(/.*\//,"")
#set :bundle_cmd , "/home/deploy/.rvm/gems/ruby-1.9.3-p194@mrtablueline/bin/bundle"
set :rvm_type, :user
#============

ssh_options[:forward_agent] = true
role :web, "203.146.127.179"
role :app, "203.146.127.179"
role :db, "203.146.127.179", :primary => true

set :bundle_cmd, "bundle"
#set :sidekiq_role, :sidekiq
#role :sidekiq, "203.146.127.169"
#set :sidekiq_cmd, "#{bundle_cmd} exec sidekiq"
#set :sidekiqctl_cmd, "#{bundle_cmd} exec sidekiqctl"
#set :sidekiq_timeout, 10
#set :sidekiq_role, :app
#set :sidekiq_pid, "#{current_path}/tmp/pids/sidekiq.pid"
#set :sidekiq_processes, 1
#after "deploy:update_code", "deploy:bundle_install"
#after "deploy:update_code", "deploy:rvm:setup"
after :deploy, "deploy:rvm:trust_rvmrc"
after :deploy, "deploy:bundle_install"
after :deploy, "deploy:cleanup" # keep only the last 5 releases
#require 'sidekiq/capistrano'

namespace :deploy do
  desc "install the necessary prerequisite"
  task :bundle_install, :roles => :app do
    run "cd #{current_path} && LC_ALL='en_US.UTF-8' bundle install"
  end

  desc "reload the database with seed data"
  task :seed do
    run "cd #{current_path} && bundle exec rake db:seed RAILS_ENV=#{rails_env}"
  end

  desc "reload the database with seed data"
  task :assets_precompile do
    run "cd #{current_path} && bundle exec rake  assets:precompile RAILS_ENV=#{rails_env}"
  end

  desc "Update the necessary prerequisite"
  task :bundle_update, :roles => :app do
    run "cd #{current_path} && LC_ALL='en_US.UTF-8' bundle update"
  end
  namespace :rvm do
    # Set up .rvmrc
    # Note, not using method described in:
    #   https://rvm.beginrescueend.com/integration/capistrano/
    # We want to use RVM only on the app server, so better to set up and bless an .rvmrc file
    task :setup, :roles => :app do
      run "cd #{latest_release}; rvm use 1.9.3@#{application} --rvmrc --create && rvm rvmrc trust"
    end
  end

  desc "install the necessary prerequisites"
  task :bundle_install, :roles => :app do
    #run "cd #{release_path} && bundle install"
    #run "cd #{current_path} && LC_ALL='en_US.UTF-8' bundle install --deployment --without test"
    run "cd #{current_path} && LC_ALL='en_US.UTF-8' bundle install"
    run "ln -nfs #{shared_path}/uploads #{release_path}/public/uploads"
    run "ln -nfs #{shared_path}/transport #{release_path}/public/transport"
    run "ln -nfs #{shared_path}/tmp #{release_path}/tmp"
  end

  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop, :restart].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
  desc "trust rvm"
  namespace :rvm do
    task :trust_rvmrc do
      run "rvm rvmrc trust #{release_path}"
    end
  end
end
