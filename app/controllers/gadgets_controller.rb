class GadgetsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @gadgets = Gadget.all
  end

  def search
    @gadgets = Gadget.full_text_search(params[:query])
  end

end
