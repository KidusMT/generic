class ClockTimesController < ApplicationController
  before_action :set_clock_time, only: [:show, :update, :destroy]

  # GET /clock_times
  def index
    @clock_times = ClockTime.all

    render json: @clock_times
  end

  # GET /clock_times/1
  def show
    render json: @clock_time
  end

  # POST /clock_times
  def create
    @clock_time = ClockTime.new(clock_time_params)

    if @clock_time.save
      render json: @clock_time, status: :created, location: @clock_time
    else
      render json: @clock_time.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clock_times/1
  def update
    if @clock_time.update(clock_time_params)
      render json: @clock_time
    else
      render json: @clock_time.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clock_times/1
  def destroy
    @clock_time.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clock_time
      @clock_time = ClockTime.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clock_time_params
      params.fetch(:clock_time, {})
    end
end
