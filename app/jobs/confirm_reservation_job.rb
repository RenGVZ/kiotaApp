class ConfirmReservationJob < ApplicationJob
  queue_as :default

  def perform(property_viewings_id)
    property_viewing = PropertyViewing.find(property_viewings_id)
    puts "Confirm resevation of #{property_viewings_id}"
    # TODO: perform a time consuming task like Clearbit's Enrinchment API.
    property_viewing.status = "confirmed"
    date = Date.parse(%w(Tuesday Wednesday).sample) + 7
    property_viewing.confirmed_time = date.to_time.change(hour: (8..12).to_a.sample)
    property_viewing.save
    puts "Done! "
  end
end
