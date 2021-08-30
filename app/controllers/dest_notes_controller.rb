class DestNotesController < ApplicationController
  before_action :set_dest_note, only: %i[ show edit update destroy ]

  # GET /dest_notes or /dest_notes.json
  def index
    @dest_notes = DestNote.all
  end

  # GET /dest_notes/1 or /dest_notes/1.json
  def show
  end

  # GET /dest_notes/new
  def new
    @dest_note = DestNote.new
  end

  # GET /dest_notes/1/edit
  def edit
  end

  # POST /dest_notes or /dest_notes.json
  def create
    @dest_note = DestNote.new(dest_note_params)

    respond_to do |format|
      if @dest_note.save
        format.html { redirect_to @dest_note, notice: "Dest note was successfully created." }
        format.json { render :show, status: :created, location: @dest_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dest_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dest_notes/1 or /dest_notes/1.json
  def update
    respond_to do |format|
      if @dest_note.update(dest_note_params)
        format.html { redirect_to @dest_note, notice: "Dest note was successfully updated." }
        format.json { render :show, status: :ok, location: @dest_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dest_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dest_notes/1 or /dest_notes/1.json
  def destroy
    @dest_note.destroy
    respond_to do |format|
      format.html { redirect_to dest_notes_url, notice: "Dest note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dest_note
      @dest_note = DestNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dest_note_params
      params.require(:dest_note).permit(:destination_id, :note_id)
    end
end
