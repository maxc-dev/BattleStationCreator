class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
    @progress = 0

    if params[:selected_category_id].present?
      session[params[:selected_category_id].to_i] = params[:selected_part_id].to_i
    end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:name, :abbrv, :description, :compulsory)
  end
end
