require 'spec_helper'

describe 'graphicsmagick::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'should install graphicsmagick on debian' do
    chef_run.node.set['platform_family'] = 'debian'
    chef_run.converge(described_recipe)
    expect(chef_run).to install_package('graphicsmagick-imagemagick-compat')
  end

  it 'should install graphicsmagick on rhel' do
    chef_run.node.set['platform_family'] = 'rhel'
    chef_run.converge(described_recipe)
    expect(chef_run).to install_package('GraphicsMagick')
  end
end
