set :branch, :master
set :deploy_to, '/home/meecon/staging'

server 'staging.meecon.tk',
  user: 'meecon',
  roles: %w{ web app db },
  ssh_options: {
    forward_agent: true
  }
