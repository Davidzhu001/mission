class HomeController < ApplicationController
  layout 'layout2', except: [:index]
  def home
  end

  def index
  end
  def contact
  end
  def about
  end
end
