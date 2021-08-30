class DestLocationsController < ApplicationController
  before_action :set_dest_location, only: %i[ show edit update destroy ]

  # GET /dest_locations or /dest_locations.json
  def index
    @dest_locations = DestLocation.all
  end

  # GET /dest_locations/1 or /dest_locations/1.json
  def show
  end

  # GET /dest_locations/new
  def new
    @dest_location = DestLocation.new
  end

  # GET /dest_locations/1/edit
  def edit
  end

  # POST /dest_locations or /dest_locations.json
  def create
    @dest_location = DestLocation.new(dest_location_params)

    respond_to do |format|
      if @dest_location.save
        format.html { redirect_to @dest_location, notice: "Dest location was successfully created." }
        format.json { render :show, status: :created, location: @dest_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dest_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dest_locations/1 or /dest_locations/1.json
  def update
    respond_to do |format|
      if @dest_location.update(dest_location_params)
        format.html { redirect_to @dest_location, notice: "Dest location was successfully updated." }
        format.json { render :show, status: :ok, location: @dest_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dest_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dest_locations/1 or /dest_locations/1.json
  def destroy
    @dest_location.destroy
    respond_to do |format|
      format.html { redirect_to dest_locations_url, notice: "Dest location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dest_location
      @dest_location = DestLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dest_location_params
      params.require(:dest_location).permit(:destination_id, :location_id)
    end
end
