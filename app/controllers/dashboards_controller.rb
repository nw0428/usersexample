class DashboardsController < ApplicationController

  def dashboard
    @paintings = Painting.where(owner: current_owner)
  end

end
