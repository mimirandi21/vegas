class LocationsController < ApplicationController
  before_action :set_location, only: %i[ show edit update destroy ]

  # GET /locations or /locations.json
  def index
    @locations = Location.all.sort { |a, b| a[:location] <=> b[:location] }
  end

  # GET /locations/1 or /locations/1.json
  def show
    @foodlocs = FoodLocation.where(location_id: params[:id]).to_a
    
    if @foodlocs != []
      @foods = []
      @foodlocs.each do |f|
        @foods.push(Food.find_by(:id => f[:food_id]))
      end
      @foods = @foods.sort_by { |item| item.name }
    end

    @destlocs = DestLocation.where(location_id: params[:id]).to_a
    
    if @destlocs != []
      @dests = []
      @destlocs.each do |d|
        @dests.push(Destination.find_by(:id => d[:destination_id]))
      end
      @dests = @dests.sort_by { |item| item.name }
    end

    @loclocs = TransLocation.where(location_id: params[:id]).to_a
    
    if @loclocs != []
      @locs = []
      @loclocs.each do |l|
        @locs.push(Transportation.find_by(:id => l[:transportation_id]))
      end
      @locs = @locs.sort_by { |item| item.name }
    end
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations or /locations.json
  def create
    @location = Location.new(location_params)

    # respond_to do |format|
    #   if @location.save
    #     format.html { redirect_to @location, notice: "Location was successfully created." }
    #     format.json { render :show, status: :created, location: @location }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @location.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /locations/1 or /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: "Location was successfully updated." }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1 or /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: "Location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def location_params
      params.require(:location).permit(:location, :lat, :lng)
    end
end
