class FoodNotesController < ApplicationController
    before_action :set_food_note, only: %i[ show edit update destroy ]

  # GET /food_notes or /food_notes.json
  def index
    @food_notes = FoodNote.all
  end

  # GET /food_notes/1 or /food_notes/1.json
  def show
  end

  # GET /food_notes/new
  def new
    @food_note = FoodNote.new
  end

  # GET /food_notes/1/edit
  def edit
  end

  # POST /food_notes or /food_notes.json
  def create
    @food_note = FoodNote.new(food_note_params)

    respond_to do |format|
      if @food_note.save
        format.html { redirect_to @food_note, notice: "Food note was successfully created." }
        format.json { render :show, status: :created, location: @food_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_notes/1 or /food_notes/1.json
  def update
    respond_to do |format|
      if @food_note.update(food_note_params)
        format.html { redirect_to @food_note, notice: "Food note was successfully updated." }
        format.json { render :show, status: :ok, location: @food_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_notes/1 or /food_notes/1.json
  def destroy
    @food_note.destroy
    respond_to do |format|
      format.html { redirect_to food_notes_url, notice: "Food note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_note
      @food_note = FoodNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_note_params
      params.require(:food_note).permit(:food_id, :note_id)
    end
end
