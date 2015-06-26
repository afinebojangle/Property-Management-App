class UnitsController < ApplicationController
  def new
    @property = Property.find(params[:property_id])
    @unit = Unit.new
  end

  def create
    @property = Property.find(params[:property_id])
    @unit = @property.units.build(params.require(:unit).permit(:name, :description))
    if @property.save
      flash[:notice] = "Unit was saved"
      redirect_to @property
    else
      flash[:error] = "There was an error saving the unit. Please try again."
    end
  end

  def show
    @property = Property.find(params[:property_id])
    @unit = Unit.find(params[:id])
  end
end
