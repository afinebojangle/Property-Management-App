class PropertiesController < ApplicationController

  before_action :authenticate_user!

  def index
    @properties = current_user.properties.all
  end

  def show
    @property = Property.find(params[:id])
    @units = @property.units
  end

end
