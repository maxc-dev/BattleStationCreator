class PartsController < ApplicationController
  # GET /parts
  # GET /parts.json
  def index
    # selects all the parts
    # if the category_id param is set then filter by categories  of that id
    # if the manufacturer_id param is set then filter by manufacturers of that id
    @parts = if params[:category_id].present? && params[:manufacturer_id].present?
               Part.category_manufacturer_filter([:category_id], params[:manufacturer_id])
             elsif params[:category_id].present?
               Part.category_filter(params[:category_id])
             elsif params[:manufacturer_id].present?
               Part.manufacturer_filter(params[:manufacturer_id])
             else
               Part.all # no params set, return all parts
             end
  end

  # restrict params allowed
  def listing_params
    params.permit(:category_id, :manufacturer_id)
  end
end
