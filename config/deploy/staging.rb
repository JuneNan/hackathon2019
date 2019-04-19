role :web, %w{ec2-user@13.114.63.127}

set :pem_key_location, '~/Pems/fact-check.pem'

%w{13.114.63.127}.each do |ip|
server "#{ip}",
  user: 'ec2-user',
  roles: %w{web},
  ssh_options: {
    keys: ["#{fetch(:pem_key_location)}".strip],
    forward_agent: false,
    auth_methods: %w(publickey)
  }
end
