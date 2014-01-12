require 'spec_helper'

describe Gadget do

  it 'should create a gadget with any attributes' do
    gadget = Gadget.create(:id => "XX1", :name => "S2", :manufacturer => 'samsung')
    gadget.should_not be_nil
  end

  it 'can have many pictures(integration spec)' do
    s2_pic = Picture.new(:attachment => File.new(Rails.root+'app/assets/images/s2.png'))
    s2_180_degree_pic = Picture.new(:attachment => File.new(Rails.root+'app/assets/images/s2.png'))
    gadget = Gadget.create(:name => "S2", :manufacturer => 'samsung', :pictures => [s2_pic, s2_180_degree_pic])
    gadget.pictures.length.should == 2
  end

  it 'belongs to a user' do
    gadget = Gadget.create(:name => "S2", :manufacturer => 'samsung')
    gadget.should_not be_valid
  end
end
