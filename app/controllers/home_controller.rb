class HomeController < ApplicationController
  def home
    #selects all parts in random order
    @parts = Part.all.order('RANDOM()')
    #calculates how many images will be shown per column
    @images_per_column = (@parts.length / 4).round
  end
end
