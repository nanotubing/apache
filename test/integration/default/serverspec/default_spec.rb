require 'spec_helper'

describe 'apache::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe port(80) do
    it {should be_listening}
  end

  describe command('curl localhost') do
    its(:stdout) {should match /<h1>Hello, world!<\/h1>/}
  end

end
