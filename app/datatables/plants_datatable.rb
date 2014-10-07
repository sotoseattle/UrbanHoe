# class PlantsDatatable
#   # delegate :params, :h, :link_to, :number_to_currency, to: :@view
#   delegate :params, :h, :link_to, to: :@view

#   def initialize(view)
#     @view = view
#   end

#   def as_json(options = {})
#     {
#       draw: params[:draw].to_i,
#       recordsTotal:  Plant.count,
#       recordsFiltered: Plant.count,
#       data: get_data
#     }
#     # {
#     #   sEcho: params[:sEcho].to_i,
#     #   iTotalRecords: Plant.count,
#     #   iTotalDisplayRecords: plants.total_entries,
#     #   aaData: data
#     # }
#   end

# private

#   def get_data
#     plants.map { |p| p.plant_name }
#     # plants.map do |plant|
#     #   [
#     #     link_to(plant.plant_name, plant)#,
#     #     h(plant.category),
#     #     h(plant.released_on.strftime("%B %e, %Y")),
#     #     number_to_currency(plant.price)
#     #   ]
#     end
#   end

#   def plants
#     @plants ||= fetch_plants
#   end

#   def fetch_plants
#     plants = Plant.all
#     # plants = Plant.order("#{sort_column} #{sort_direction}")
#     # plants = plants.page(page).per_page(per_page)
#     # if params[:sSearch].present?
#     #   # plants = plants.where("plant_name like :search or category like :search", search: "%#{params[:sSearch]}%")
#     #   plants = plants.where("plant_name like :search", search: "%#{params[:sSearch]}%")
#     # end
#     plants
#   end

#   def page
#     params[:iDisplayStart].to_i/per_page + 1
#   end

#   def per_page
#     params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
#   end

#   def sort_column
#     # columns = %w[plant_name category released_on price]
#     columns = %w[plant_name]
#     columns[params[:iSortCol_0].to_i]
#   end

#   def sort_direction
#     params[:sSortDir_0] == "desc" ? "desc" : "asc"
#   end
# end
