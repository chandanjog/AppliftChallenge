require 'spec_helper'

describe Gadget do

  it 'should create a gadget with any attributes' do
    gadget = Gadget.create(:id => "XX1", :name => "S2", :manufacturer => 'samsung')
    gadget.should_not be_nil
  end

end
