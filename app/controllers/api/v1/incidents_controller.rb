class Api::V1::IncidentsController < ApplicationController

  def show
    @incident = Incident.find_by(id: params[:id])
  end
  def index
    @incidents = Incident.all
  end
  def edit
    @incident = Incident.find_by(id: params[:id])
  end
  def update
    @incident = Incident.find_by(id: params[:id])
    @incident.update(
      murderer_first_name: params[:murderer_first_name],
      murderer_last_name: params[:murderer_last_name],
      birthdate: params[:birthdate],
      location: params[:location],
      weapon: params[:weapon],
      number_of_victims: params[:number_of_victims],
      sentence: params[:sentence]
      )
  end
  def create
    @incident = Incident.new(
      murderer_first_name: params[:murderer_first_name],
      murderer_last_name: params[:murderer_last_name],
      birthdate: params[:birthdate],
      location: params[:location],
      weapon: params[:weapon],
      number_of_victims: params[:number_of_victims],
      sentence: params[:sentence]
      )
    if @incident.save
    else
      render json: { errors: @incident.errors.full_messages }, status: 422
    end
  end
  def destroy
    incident = Incident.find_by(id: params[:id])
    incident.destroy
  end
end
