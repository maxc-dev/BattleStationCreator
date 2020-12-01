class ManufacturersController < ApplicationController
  # GET /manufacturers
  # GET /manufacturers.json
  def index
    @manufacturers = Manufacturer.all
  end
end
