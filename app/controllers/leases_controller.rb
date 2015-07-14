class LeasesController < ApplicationController

  def new
    @lease = Lease.new
  end

  def create
    @lease = Lease.new(params.require(:lease).permit(:start_date, :end_date, :user_id, :unit_id))
    if @lease.save
      flash[:notice] = "Lease was saved"
      redirect_to @lease
    else
      flash[:error] = "There was an error saving the lease. Please try again."
    end
  end

  def show
    @lease = Lease.find(params[:lease_id])
  end

end
