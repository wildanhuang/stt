# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

require 'capistrano/nvm'
require 'capistrano/nvm-install'
require 'capistrano/rails'
require 'capistrano/passenger'
require 'capistrano/rvm'

set :nvm_type, :user # or :system, depends on your nvm setup
set :nvm_node, 'v18.20.4'
set :nvm_map_bins, %w{node npm yarn}
# set :rbenv_type, :user
# set :rbenv_ruby, '3.3.0'
set :rvm_type, :user                     # Defaults to: :auto
set :rvm_ruby_version, '3.3.0'
set :passenger_restart_with_sudo, true

# Load the SCM plugin appropriate to your project:
#
# require "capistrano/scm/hg"
# install_plugin Capistrano::SCM::Hg
# or
# require "capistrano/scm/svn"
# install_plugin Capistrano::SCM::Svn
# or
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

# Include tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#   https://github.com/capistrano/passenger
#
# require "capistrano/rvm"
# require "capistrano/rbenv"
# require "capistrano/chruby"
# require "capistrano/bundler"
# require "capistrano/rails/assets"
# require "capistrano/rails/migrations"
# require "capistrano/passenger"

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
