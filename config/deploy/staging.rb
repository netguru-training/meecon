set :branch, :master
set :deploy_to, '/home/meecon/staging'
set :ssh_options, keys: ['config/deploy_id_rsa'] if File.exist?('config/deploy_id_rsa')

server 'staging.meecon.tk',
  user: 'meecon',
  roles: %w{ web app db },
  ssh_options: {
    forward_agent: true
  }
