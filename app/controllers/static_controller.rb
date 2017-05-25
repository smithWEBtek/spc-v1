class StaticController < ApplicationController
  def home
    render :home
  end

  def new_import
    @import = Import.new
    render :import
  end

	def get_map(lat,long)
		# self.latitude
		# self.longitude
		# hit the GoogleMaps API
		# get back response map
		# render on DOM via jQuery
	end

end
