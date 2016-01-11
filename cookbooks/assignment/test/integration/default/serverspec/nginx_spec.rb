require 'spec_helper'

# Test nginx installation
describe package('nginx') do
	it { should be_installed }
end

# Test nginx service is active and running
describe service('nginx') do
	it { should be_enabled	 }
	it { should be_running	 }
end

# Test web service is listened
describe port(80) do
	it { should be_listening }
end

# Test correct index file is serving
describe file('/usr/share/nginx/html/index.html') do
	it { should be_file }
	its(:content) { should match /Welcome to <strong>nginx<\/strong>/ }
end