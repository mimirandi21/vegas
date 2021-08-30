class DestRecommendationsController < ApplicationController
  before_action :set_dest_recommendation, only: %i[ show edit update destroy ]

  # GET /dest_recommendations or /dest_recommendations.json
  def index
    @dest_recommendations = DestRecommendation.all
  end

  # GET /dest_recommendations/1 or /dest_recommendations/1.json
  def show
  end

  # GET /dest_recommendations/new
  def new
    @dest_recommendation = DestRecommendation.new
  end

  # GET /dest_recommendations/1/edit
  def edit
  end

  # POST /dest_recommendations or /dest_recommendations.json
  def create
    @dest_recommendation = DestRecommendation.new(dest_recommendation_params)

    respond_to do |format|
      if @dest_recommendation.save
        format.html { redirect_to @dest_recommendation, notice: "Dest recommendation was successfully created." }
        format.json { render :show, status: :created, location: @dest_recommendation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dest_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dest_recommendations/1 or /dest_recommendations/1.json
  def update
    respond_to do |format|
      if @dest_recommendation.update(dest_recommendation_params)
        format.html { redirect_to @dest_recommendation, notice: "Dest recommendation was successfully updated." }
        format.json { render :show, status: :ok, location: @dest_recommendation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dest_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dest_recommendations/1 or /dest_recommendations/1.json
  def destroy
    @dest_recommendation.destroy
    respond_to do |format|
      format.html { redirect_to dest_recommendations_url, notice: "Dest recommendation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dest_recommendation
      @dest_recommendation = DestRecommendation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dest_recommendation_params
      params.require(:dest_recommendation).permit(:destination_id, :recommendation_id)
    end
end
