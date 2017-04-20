class StaticController < ApplicationController
  def home
    render :home
  end

  def new_import
    @import = Import.new
    render :import
  end

end
