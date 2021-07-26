class ActivitiesController < ApplicationController
  def index
    a = Activity.all
    render json: a
  end

  def destroy
    activity = Activity.find_by(id: params[:id])

    if activity 
      activity.destroy
    else 
      render json: {"error": "Activity not found"}, status: :not_found
    end 
  end 
end
