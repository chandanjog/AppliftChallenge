class GadgetsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @gadgets = Gadget.all
  end
end
