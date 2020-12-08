class ListingsController < ApplicationController
  before_action :set_listing, only: %i[show edit update destroy]
  before_action :redriect_not_signed_in, only: %i[show edit update destroy]

  # prevents unlogged or wrong users from accessing content that isnt theres
  def redriect_not_signed_in
    if !current_user.present? || current_user.id != @listing.user_id
      redirect_to new_user_session_path
      false
    end
  end

  # GET /listings
  # GET /listings.json
  def index
    # if the save_list param is set, use the session vars to create a new listing
    if params[:save_list].present? && current_user.present?
      # loops through part-id session variables, if a fresh part is present it means
      # a new part list can be created
      session_empty = true
      (1..10).each do |index|
        session_empty = false if session[index].present?
      end
      # if the session variables for parts are not empty create a new part listing
      unless session_empty
        # creates a new listing with the current_user id
        new_listing = Listing.create(user: current_user)
        if new_listing.save
          # loop part sessions, if it exists create a list item and associate it to the listing
          (1..10).each do |index|
            next unless session[index].present?

            listing_line_item = ListItem.new(listing_id: new_listing.id, part_id: session[index])
            if listing_line_item.save
              session.delete(index)
            else
              new_listing.destroy
            end
          end
        end
      end
    end

    # if the user is logged in it will display their listings, if not it will display no listings
    @listings = if current_user.present?
                  Listing.user_listings(current_user)
                else
                  Listing.none
                end
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    @part_infos = ListItem.find_by_sql([
      'select parts.name as part_name,
      categories.name as category_name,
      manufacturers.name as manufacturer_name from list_items
      inner join parts on list_items.part_id = parts.id
      inner join categories on parts.category_id = categories.id
      inner join manufacturers on parts.manufacturer_id = manufacturers.id
      where listing_id = ?',
      @listing.id
    ])

    @listing_metadata = ListItem.find_by_sql([
     'select sum(parts.power) as power_consumption,
      sum(parts.price) as total_cost,
      count(distinct parts.category_id) as categories_count,
      count(distinct parts.manufacturer_id) as manufacturers_count from list_items
      inner join parts on list_items.part_id = parts.id
      where listing_id = ?',
      @listing.id
    ])
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_listing
    @listing = Listing.find(params[:id])
  end

  # restrict params allowed
  def listing_params
    params.permit(:save_list)
  end
end
