class SignupsController < ApplicationController

  def create
    signup = Signup.create!(signup_params)
    # chaining activity because they only want the associated activity from the created signup
    render json: signup.activity, status: :created
  end

  private

  def signup_params
    params.permit(:time, :camper_id, :activity_id)
  end
end
