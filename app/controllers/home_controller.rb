class HomeController < ApplicationController

  def index
    @sports = Event.where(sports: true).sample(3)
    @music_id = Category.where(description: "Music").ids
    @music = Event.where(category_id: @music_id).sample(3)
  end

end
