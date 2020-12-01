class PartsController < ApplicationController
  before_action :set_part, only: %i[edit update destroy]

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

  # GET /parts/new
  def new
    @part = Part.new
  end

  # GET /parts/1/edit
  def edit; end

  # POST /parts
  # POST /parts.json
  def create
    @part = Part.new(part_params)

    respond_to do |format|
      if @part.save
        format.html { redirect_to @part, notice: 'Part was successfully created.' }
        format.json { render :show, status: :created, location: @part }
      else
        format.html { render :new }
        format.json { render json: @part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parts/1
  # PATCH/PUT /parts/1.json
  def update
    respond_to do |format|
      if @part.update(part_params)
        format.html { redirect_to @part, notice: 'Part was successfully updated.' }
        format.json { render :show, status: :ok, location: @part }
      else
        format.html { render :edit }
        format.json { render json: @part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parts/1
  # DELETE /parts/1.json
  def destroy
    @part.destroy
    respond_to do |format|
      format.html { redirect_to parts_url, notice: 'Part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private


  # Only allow a list of trusted parameters through.
  def part_params
    params.require(:part).permit(:name, :price, :power)
  end
end
