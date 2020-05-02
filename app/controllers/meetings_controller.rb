class MeetingsController < ApplicationController
  def index
    @applied_reservations = current_user.applied_reservations
    @confirmed_reservations = current_user.confirmed_reservations
    ConfirmReservationJob.set(wait: 5.seconds).perform_later(@applied_reservations.sample.id) if @applied_reservations.present?
  end
end
