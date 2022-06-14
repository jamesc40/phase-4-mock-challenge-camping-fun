class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordNotFound, with: :not_found_res
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_res

  private
  
  # rescues any method that uses a find with res and a not found err code
  def not_found_res(invalid)
    render json: { error: "#{invalid.model} not found" }, status: :not_found
  end
  
  # rescues the create path with invalid data is inputed
  def invalid_res(invalid)
    render json: { errors: [ invalid.record.errors ]}, status: :unprocessable_entity
  end
end
