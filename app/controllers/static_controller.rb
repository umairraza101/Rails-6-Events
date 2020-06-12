class StaticController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @events = Event.published
  end

  def show
    @event = Event.find_by_id(params[:id])
  end
end
