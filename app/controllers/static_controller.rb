class StaticController < ApplicationController

  def sport
    @categories = Category.where(sports: true)
  end

end
