class HomeController < ApplicationController
  def home
    @parts = Part.all.order('RANDOM()')
    @images_per_column = (@parts.length / 4).round
  end
end
