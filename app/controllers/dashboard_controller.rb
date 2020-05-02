class DashboardController < ApplicationController
  def index
    @property_viewings = PropertyViewing.where(status: "liked", user: current_user )
  end
end
