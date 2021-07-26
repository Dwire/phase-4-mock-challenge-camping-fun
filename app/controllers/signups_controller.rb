class SignupsController < ApplicationController

 def create 
  signup = Signup.new(signup_params)
  # signup = Signup.create(signup_params)

  # if signup.valid?
  if signup.save
    render json: signup.activity,  status: :created
  else 
    render json: {errors: signup.errors.full_messages}, status: :unprocessable_entity
  end 

end 
  private 

  def signup_params
    params.permit(:camper_id, :activity_id, :time)
  end 
end
