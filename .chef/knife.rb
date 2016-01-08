# Config knife
log_level                :info
log_location             STDOUT
#node_name                'nginxVM'
#client_key               'c:/chef/client.pem'
#validation_client_name   'chef-validator'
#validation_key           'C:/chef/chef-validator.pem'
#chef_server_url          'http://localhost'
#syntax_check_cache_path  '#{current_dir}/../syntax_check_cache'

cookbook_path            ['#{current_dir}/../cookbooks']