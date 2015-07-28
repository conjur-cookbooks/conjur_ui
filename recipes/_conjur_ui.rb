cookbook_file "/etc/init/conjur-ui.conf" do
  source "default/conjur-ui.upstart.conf"
  mode "0644"
end
