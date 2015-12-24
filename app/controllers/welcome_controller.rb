class WelcomeController < ApplicationController

  def index
    @categories = Category.all
    @competitions = Competition.all
  end

end
