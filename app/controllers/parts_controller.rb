class PartsController < ApplicationController
  # GET /parts
  # GET /parts.json
  def index
    # selects all the parts
    # if the category_id param is set then filter by categories  of that id
    # if the manufacturer_id param is set then filter by manufacturers of that id
    @parts = if params[:category_id].present? && params[:manufacturer_id].present?
               Part.all.where('category_id = ? & manufacturer_id = ?', params[:category_id], params[:manufacturer_id])
             elsif params[:category_id].present?
               Part.all.where('category_id = ?', params[:category_id])
             elsif params[:manufacturer_id].present?
               Part.all.where('manufacturer_id = ?', params[:manufacturer_id])
             else
               Part.all # no params set, return all parts
             end
  end
end
