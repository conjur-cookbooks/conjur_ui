cookbook_file "/etc/init/conjur-ui.conf" do
  source "default/conjur-ui.upstart.conf"
  mode "0644"
end

execute "reload initctl config" do
  command "initctl reload-configuration"
end

service 'conjur-ui' do
  provider Chef::Provider::Service::Upstart
  action :disable
end

