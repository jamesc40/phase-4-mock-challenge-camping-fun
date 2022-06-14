class CampersController < ApplicationController
  def index
    render json: Camper.all
  end

  def show
    camper = find_camper
    # custom serializer to include the activities associated with the camper found from the params :id
    render json: camper, serializer: CamperWithActivitiesSerializer
  end

  def create
    camper = Camper.create!(camper_params)
    render json: camper, status: :created
  end

  private

  def find_camper
    Camper.find(params[:id])
  end

  def camper_params
    params.permit(:name, :age)
  end
end
