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


end

