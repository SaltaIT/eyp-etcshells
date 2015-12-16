require 'spec_helper'
describe 'etcshells' do

  context 'with defaults for all parameters' do
    it { should contain_class('etcshells') }
  end
end
