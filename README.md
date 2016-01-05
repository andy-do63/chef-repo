README.md
=========

Assignment:
	Create a cookbook that installs Nginx running on CentOS 6.7. I will expect to see Nginx running and ready for initial setup when I converge your recipe. You may leverage community cookbooks for dependencies and ideas but all code should be your own. We will expect your cookbook to use server spec and test kitchen for acceptance testing. Our expectations will be to either git clone or unpack your delivered cookbook and execute the command chef exec rake in order to run the tests. Our environments will be running the latest version of chef-dk.

Progression:
	First attempt and success is to just install nginx on a vanilla CentOS.  I learned so much about chef development and its foundation of cookbooks, recipes, resources, nodes, community resources, knife and ruby.

	Second attemp and success is to apply Vagrant and VirtualBox to automatically stand up a CentOS 6.7 VM with chef provision to install nginx.  At this stage working with chef cookbooks and resources is much easier.

	Third attemp and success is to apply kitchen to cookbook assignment as the wrapper to initiate Vagrant and execute nginx cookbook.



