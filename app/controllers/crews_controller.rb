class CrewsController < ApplicationController
  before_action :set_crew, only: [:show, :update, :destroy]

  # GET /crews
  def index
    @crews = Crew.all

    render json: @crews
  end

  # GET /crews/1
  def show
    render json: @crew
  end

  # GET /clock_times/1
  def new
    render json: Crew.new
  end

  # POST /crews
  def create
    @crew = Crew.new(crew_params)

    if @crew.save
      render json: @crew, status: :created, location: @crew
    else
      render json: @crew.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew
      @crew = Crew.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def crew_params
      params.require(:crew).permit(:code, :name)
    end
end
