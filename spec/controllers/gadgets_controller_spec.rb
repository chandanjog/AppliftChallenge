require 'spec_helper'

describe GadgetsController do
  login_user

  it "should have a current_user" do
    subject.current_user.should_not be_nil
  end

  it "should assign all gadgets on index call" do
    expect(Gadget).to receive(:all) { double }
    get 'index'
    response.should be_success
    assigns[:gadgets].should_not be_nil
  end

  it 'should assign gadgets matching search query' do
    expect(Gadget).to receive(:full_text_search).with('samsung apple') { double }
    get 'search', {:query => 'samsung apple'}
    response.should be_success
    assigns[:gadgets].should_not be_nil
  end

end

