set :branch, :master
set :deploy_to, '/home/meecon/production'
set :app_environment, 'production'

server 'meecon.tk',
  user: 'meecon',
  roles: %w{ web app db },
  ssh_options: {
    forward_agent: true
  }
