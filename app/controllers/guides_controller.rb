class GuidesController < ApplicationController
  before_action :set_guide, only: [:show, :update, :destroy]

  # GET /guides
  def index
    @guides = Guide.all
    json_response(@guides)
  end

  # GET /guides/1
  def show
    json_response(@guide)
  end

  # POST /guides
  def create
    @guide = Guide.create!(guide_params)
    json_response(@guide, :created)
  end

  # PATCH/PUT /guides/1
  def update
    @guide.update(guide_params)
    head :no_content
  end

  # DELETE /guides/1
  def destroy
    @guide.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guide
      @guide = Guide.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def guide_params
      params.require(:guide).permit(:qualification, :name)
    end
end
