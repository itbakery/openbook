class HomeController < ApplicationController
  layout 'home'
  def index
  end
  def underconstruct
    respond_to do  |format|
       format.html  {render layout: 'underconstruct'}
    end
  end
end
