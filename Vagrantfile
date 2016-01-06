# Config VM Box
	Vagrant.configure("2") do |config|
		config.vm.box = "bento/centos-6.7"
		config.vm.hostname = "nginxVM-Assignment"
		config.vm.boot_timeout = "600"
		# Default IP: 127.0.0.1:2222

		# Turn ON VM GUI Terminal
		config.vm.provider "virtualbox" do |v|
			v.gui = true
		end

		# Execute Chef Cookbook via Role
		#config.vm.provision "chef_zero" do |chef|
		#	chef.roles_path = "roles"
		#	chef.nodes_path = "kitchen/nodes"
		#	chef.add_role("nginxVM")
		#end

		# Execute Chef Cookbook via Recipe
		config.vm.provision "chef_zero" do |chef|
			chef.cookbooks_path = [ "cookbooks", "../.berkshelf/cookbooks" ]
			chef.nodes_path = "kitchen/nodes"
			chef.add_recipe("nginx")
		end
	end