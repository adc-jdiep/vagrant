require 'spec_helper'
describe 'hieratest' do

  context 'with defaults for all parameters' do
    it { should contain_class('hieratest') }
  end
end
