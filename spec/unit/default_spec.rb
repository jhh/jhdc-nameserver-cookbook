require 'spec_helper'

describe 'jhdc-nameserver::default' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new.converge(described_recipe)
  end

  %w(bind bind-utils).each do |package|
    it "installs #{package}" do
      expect(chef_run).to upgrade_package(package)
    end
  end

  it "enables and starts fail2ban server" do
    expect(chef_run).to enable_service('named')
    expect(chef_run).to start_service('named')
  end

  it "updates /etc/resolv.conf" do
    expect(chef_run).to render_file('/etc/resolv.conf').with_content(/nameserver 127.0.0.1/)
  end
end
