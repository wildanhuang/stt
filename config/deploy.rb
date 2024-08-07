set :application, "stt"
set :repo_url, "git@github.com:wildanhuang/stt.git"
# Also works with non-github repos, I roll my own gitolite server
set :deploy_to, "/home/deploy/#{fetch :application}"
set :default_env, {
  PATH: '$HOME/.nvm/versions/node/v20.16.0/bin/:$PATH',
  NODE_ENVIRONMENT: 'production'
}
set :passenger_environment_variables, { 'PASSENGER_INSTANCE_REGISTRY_DIR' => '/tmp' }
# set :rbenv_prefix, '/usr/bin/rbenv exec' # Cf issue: https://github.com/capistrano/rbenv/issues/96
append :linked_files, "config/secrets.yml", "config/database.yml"
# append :linked_files, "config/master.key"
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'