class PartsController < ApplicationController
  # GET /parts
  # GET /parts.json
  def index
    # selects all the parts
    # if the category_id param is set then filter by categories  of that id
    # if the manufacturer_id param is set then filter by manufacturers of that id
    sql_execute = 'select parts.id as id,
      parts.name as name,
      parts.price as price,
      parts.category_id as category_id,
      categories.name as category_name,
      manufacturers.name as manufacturer_name from parts
      inner join categories on parts.category_id = categories.id
      inner join manufacturers on parts.manufacturer_id = manufacturers.id '

    # dynamic sql statement which adds filters for categories and manufacturers if the params are set
    if params[:category_id].present? || params[:manufacturer_id].present?
      sql_execute += 'where '

      if params[:category_id].present?
        sql_execute += 'categories.id = ? '

        if params[:manufacturer_id].present?
          sql_execute += 'and manufacturers.id = ?'
          @part_infos = Part.find_by_sql([sql_execute, params[:category_id], params[:manufacturer_id]])
        else
          @part_infos = Part.find_by_sql([sql_execute, params[:category_id]])
        end

      else
        sql_execute += 'manufacturers.id = ?'
        @part_infos = Part.find_by_sql([sql_execute, params[:manufacturer_id]])
      end
    else
      @part_infos = Part.find_by_sql([sql_execute])
    end
  end

  # restrict params allowed
  def listing_params
    params.permit(:category_id, :manufacturer_id)
  end
end
