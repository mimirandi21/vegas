class TransportationsController < ApplicationController
  before_action :set_transportation, only: %i[ show edit update destroy ]

  # GET /transportations or /transportations.json
  def index
    @transportations = Transportation.all
  end

  # GET /transportations/1 or /transportations/1.json
  def show

    
    @transnotes = TransNote.where(transportation_id: params[:id]).to_a
    
    if @transnotes != []
      @notes = []
      @transnotes.each do |n|
        @notes.push(Note.find_by(:id => n[:note_id]))
      end
    end
  
    @translikes = TransLike.where(transportation_id: params[:id]).to_a
    
    if @translikes != []
      @likes = []
      @translikes.each do |l|
        @likes.push(Like.find_by(:id => l[:like_id]))
      end
    end
  end

  # GET /transportations/new
  def new
    @transportation = Transportation.new
  end

  # GET /transportations/1/edit
  def edit
  end

  # POST /transportations or /transportations.json
  def create
    @transportation = Transportation.new(transportation_params)

    respond_to do |format|
      if @transportation.save
        format.html { redirect_to @transportation, notice: "Transportation was successfully created." }
        format.json { render :show, status: :created, location: @transportation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transportation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transportations/1 or /transportations/1.json
  def update
    respond_to do |format|
      if @transportation.update(transportation_params)
        format.html { redirect_to @transportation, notice: "Transportation was successfully updated." }
        format.json { render :show, status: :ok, location: @transportation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transportation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transportations/1 or /transportations/1.json
  def destroy
    @transportation.destroy
    respond_to do |format|
      format.html { redirect_to transportations_url, notice: "Transportation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transportation
      @transportation = Transportation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transportation_params
      params.require(:transportation).permit(:name, :hours, :website)
    end
end
