class DestiniesController < ApplicationController
  before_action :set_destiny, only: [:show, :update, :destroy]

  # GET /destinies
  def index
    @destinies = Destiny.all
    json_response(@destinies)
  end

  # GET /destinies/1
  def show
    json_response(@destiny)
  end

  # POST /destinies
  def create
    @destiny = Destiny.create!(destiny_params)
    json_response(@destiny, :created)
  end

  # PATCH/PUT /destinies/1
  def update
    @destiny.update(destiny_params)
    head :no_content
  end

  # DELETE /destinies/1
  def destroy
    @destiny.destroy
    head :no_content
  end

  private

    def set_destiny
      @destiny = Destiny.find(params[:id])
    end

    def destiny_params
      params.require(:destiny).permit(:name, :fixed_value)
    end
end
