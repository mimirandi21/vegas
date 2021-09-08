class DestinationsController < ApplicationController
  before_action :set_destination, only: %i[ show edit update destroy ]

  # GET /destinations or /destinations.json
  def index
    @destinations = Destination.all
  end

  # GET /destinations/1 or /destinations/1.json
  def show
    @destlocs = []

    @destlocs.push(DestLocation.find_by(:destination_id => params[:id]))
    if @destlocs != []

      @locs = []
      @destlocs.each do |loc|
        
        @locs.push(Location.find_by(:id => loc[:location_id]))
      end
    end
    
    @destspecials = DestSpecial.where(destination_id: params[:id]).to_a
    
    if @destspecials != []
      @specials = []
      @destspecials.each do |s|
        
        @specials.push(Special.find_by(:id => s[:special_id]))
      end
    end

    
    @destnotes = DestNote.where(destination_id: params[:id]).to_a
    
    if @destnotes != []
      @notes = []
      @destnotes.each do |n|
        @notes.push(Note.find_by(:id => n[:note_id]))
      end
    end

    
    @destrecs = DestRecommendation.where(destination_id: params[:id]).to_a
    
    if @destrecs != []
      @recs = []
      @destrecs.each do |r|
        @recs.push(Recommendation.find_by(:id => r[:recommendation_id]))
      end
    end

    
    @destlikes = DestLike.where(destination_id: params[:id]).to_a
    
    if @destlikes != []
      @likes = []
      @destlikes.each do |l|
        @likes.push(Like.find_by(:id => l[:like_id]))
      end
    end

  end

  # GET /destinations/new
  def new
    @destination = Destination.new
  end

  # GET /destinations/1/edit
  def edit
  end

  # POST /destinations or /destinations.json
  def create
    @destination = Destination.new(destination_params)

    respond_to do |format|
      if @destination.save
        format.html { redirect_to @destination, notice: "Destination was successfully created." }
        format.json { render :show, status: :created, location: @destination }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destinations/1 or /destinations/1.json
  def update
    respond_to do |format|
      if @destination.update(destination_params)
        format.html { redirect_to @destination, notice: "Destination was successfully updated." }
        format.json { render :show, status: :ok, location: @destination }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinations/1 or /destinations/1.json
  def destroy
    @destination.destroy
    respond_to do |format|
      format.html { redirect_to destinations_url, notice: "Destination was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination
      @destination = Destination.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def destination_params
      params.require(:destination).permit(:name, :hours, :website)
    end
end
