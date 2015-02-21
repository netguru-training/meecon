set :branch, :master
set :deploy_to, '/home/meecon/production'

server 'meecon.cinek.tk',
  user: 'meecon',
  roles: %w{ web app db },
  ssh_options: {
    forward_agent: true
  }
