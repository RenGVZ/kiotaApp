class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
    @property_viewing = current_user.property_viewings.find_by(property: @property)
  end
end
