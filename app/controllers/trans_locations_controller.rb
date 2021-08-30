class TransLocationsController < ApplicationController
  before_action :set_trans_location, only: %i[ show edit update destroy ]

  # GET /trans_locations or /trans_locations.json
  def index
    @trans_locations = TransLocation.all
  end

  # GET /trans_locations/1 or /trans_locations/1.json
  def show
  end

  # GET /trans_locations/new
  def new
    @trans_location = TransLocation.new
  end

  # GET /trans_locations/1/edit
  def edit
  end

  # POST /trans_locations or /trans_locations.json
  def create
    @trans_location = TransLocation.new(trans_location_params)

    respond_to do |format|
      if @trans_location.save
        format.html { redirect_to @trans_location, notice: "Trans location was successfully created." }
        format.json { render :show, status: :created, location: @trans_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trans_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trans_locations/1 or /trans_locations/1.json
  def update
    respond_to do |format|
      if @trans_location.update(trans_location_params)
        format.html { redirect_to @trans_location, notice: "Trans location was successfully updated." }
        format.json { render :show, status: :ok, location: @trans_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trans_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trans_locations/1 or /trans_locations/1.json
  def destroy
    @trans_location.destroy
    respond_to do |format|
      format.html { redirect_to trans_locations_url, notice: "Trans location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trans_location
      @trans_location = TransLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trans_location_params
      params.require(:trans_location).permit(:transportation_id, :location_id)
    end
end
