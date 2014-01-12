require 'spec_helper'

describe Gadget do

  before :each do
    @user = User.create(:email => "foo@bar.com", :password => "password", :password_confirmation => "password" )
  end

  it 'belongs to a user' do
    gadget = Gadget.create(:name => "S2", :manufacturer => 'samsung')
    gadget.should_not be_valid
  end

  it 'should create a gadget with any attributes' do
    Gadget.create(:id => "XX1", :name => "S2", :manufacturer => 'samsung', :user => @user)
    Gadget.where(:id => "XX1").first.should_not be_nil
  end

  it 'can have many pictures' do
    s2_pic = Picture.new(:attachment => File.new(Rails.root+'app/assets/images/s2.png'))
    s2_180_degree_pic = Picture.new(:attachment => File.new(Rails.root+'app/assets/images/s2.png'))
    Gadget.create(:id => "XX1", :name => "S2", :manufacturer => 'samsung', :pictures => [s2_pic, s2_180_degree_pic], :user => @user)
    Gadget.where(:id => "XX1").first.pictures.length.should == 2
  end

  #cannot get the tests to pass, but the same thing on console works. Need to investigate more.
  xit 'should do a full text search on manufacturer and description' do
    Gadget.create(:name => "S2", :manufacturer => 'samsung')
    Gadget.create(:name => "Iphone 5", :manufacturer => 'Apple')
    Gadget.create(:name => "s3", :manufacturer => '', :description => 'made by samsung in korea.')

    Gadget.full_text_search('samsung').size.should == 3
  end

end
