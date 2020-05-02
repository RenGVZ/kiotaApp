class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @property = Property.find(params[:property_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @property = Property.find(params[:property_id])
    user = current_user
    @reservation.property= property
    @reservation.user = user
    @reservation.save
    # redirect_to reservation_dashboard_path(@reservation)
  end

  def apply
    if current_user.profile_complete?
      @viewing_ids = params[:property_viewings].keys
      current_user.property_viewings.where(id: @viewing_ids).update_all(status: "applied")
      redirect_to dashboard_path
    else
      @viewing_ids = params[:property_viewings].keys
      current_user.property_viewings.where(id: @viewing_ids).update_all(status: "applied")
      redirect_to profile_availability_path
    end
    # redirect_to new_property_reservation_path(@reservation)


    # @property_viewings = PropertyViewing.find(@viewing_ids)
    # @property_viewings.each do |property_viewing|
    #   property_viewing.status = "applied"
    #   property_viewing.save
    # end
  end
end

