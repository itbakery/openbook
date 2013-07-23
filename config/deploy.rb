
require 'bundler/capistrano'
require 'rvm/capistrano'

set :application, 'openbook'

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "203.146.127.179"                          # Your HTTP server, Apache/etc
role :app, "203.146.127.179"                          # This may be the same as your `Web` server
role :db,  "203.146.127.179", :primary => true # This is where Rails migrations will run
role :db,  "203.146.127.179"
#server detail
set :rails_env, :production
default_run_options[:pty] = true
set :rvm_ruby_string,  ENV['GEM_HOME'].gsub(/.*\//,"")
set :rvm_type, :user
set :keep_releases, 5
set :user, "deploy"
set :use_sudo, false
set :deploy_to, "/home/deploy/#{application}"
set :deploy_via, :remote_cache
ssh_options[:forward_agent] = true
set :branch, "master"
set :scm_verbose,true
set :run_method, :run

before :deploy, "deploy:rvm:trust_rvmrc"

#repo detail
set :scm, :git
set :repository,  'git@github.com:itbakery/openbook.git'
set :branch, "master"
# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do

  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end


end
