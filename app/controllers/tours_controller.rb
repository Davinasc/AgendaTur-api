class ToursController < ApplicationController
  before_action :set_tour, only: [:show, :update, :destroy]
  before_action :set_destiny, only: [:destiny_tours, :show_destiny_tour]
  before_action :set_guide, only: [:guide_tours, :show_guide_tour]

  # GET /tours
  def index
    @tours = Tour.all
    json_response(@tours)
  end

  # GET /tours/1
  def show
    json_response(@tour)
  end

  # POST /tours
  def create
    @tour = Tour.create!(tour_params)
    json_response(@tour, :created)
  end

  # PATCH/PUT /tours/1
  def update
    @tour.update(tour_params)
    head :no_content
  end

  # DELETE /tours/1
  def destroy
    @tour.destroy
    head :no_content
  end

  # GET /destinies/1/tours
  def destiny_tours
    @tours = @destiny.tours
    json_response(@tours)
  end

  # GET /destinies/1/tours/1
  def show_destiny_tour
    @tour = @destiny.tours.find(params[:id])
    json_response(@tour)
  end

  def guide_tours
    @tours = @guide.tours
    json_response(@tours)
  end

  def show_guide_tour
    @tour = @guide.tours.find(params[:id])
    json_response(@tour)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour
      @tour = Tour.find(params[:id])
    end

    def set_destiny
      @destiny = Destiny.find(params[:destiny_id])
    end

    def set_guide
      @guide = Guide.find(params[:guid_id])
    end

    # Only allow a trusted parameter "white list" through.
    def tour_params
      params.require(:tour).permit(:exit_time, :arrival_time, :date, :vacancies, :destiny_id, :guide_id)
    end
end
