# ChefSpec for assignment
require 'chefspec'

describe 'assignment::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge('assignment::default') }
  it 'should include the nginx recipe by default' do
  	chef_run.should include_recipe 'nginx'
  end
end
