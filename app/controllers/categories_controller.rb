class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.json
  def index
    # all categories selected
    # categories are the different categories of computers eg CPU, GPU, motherboard etc...
    @categories = Category.all

    # if a selected part id and selected category id are valid parameters
    # create a session variable to store the selected category id as the part id
    # this means that the user has selected a part from the part list
    if params[:selected_category_id].present? && params[:selected_part_id].present?
      session[params[:selected_category_id].to_i] = params[:selected_part_id].to_i
    end

    @progress = 0
    (1..10).each do |check_category|
      @progress += 10 if session[check_category].present?
    end
  end

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:selected_category_id, :selected_part_id)
  end
end
