class PropertiesController < ApplicationController

  before_action :authenticate_user!

  def index
    @properties = current_user.properties.all
  end

  def show
    @property = Property.find(params[:id])
    @units = @property.units
  end

  def new
    @property = Property.new
  end

  def create
    @property = current_user.properties.build(params.require(:property).permit(:address, :description))
    if @property.save
      flash[:notice] = "Property was saved"
      redirect_to @property
    else
      flash[:error] = "There was an error saving the property. Please try again."
    end
  end

end
