require 'spec_helper'

describe 'conjur_ui::_conjur_ui' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  it 'installs the UI upstart script' do
    expect(file('/etc/init/conjur-ui.conf')).to be_file
  end
end
