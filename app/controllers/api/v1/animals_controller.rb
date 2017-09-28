class Api::V1::AnimalsController < ApplicationController
  def show
    @animal = Animal.find_by(id: params[:id])
    render json: @animal
  end

  def index
    @animals = Animal.all
    render json: @animals
  end

  def create
    @species = Species.find_or_create_by(name: params[:species])
    @animal = Animal.new(name: params[:name], gender: params[:gender], species: @species)

    if @animal.save
      render json: @animal
    else
      message = {message: 'That animal could not be saved'}
      render json: message, status: :bad_request
    end
  end
end
