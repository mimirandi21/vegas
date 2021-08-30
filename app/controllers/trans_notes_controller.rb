class TransNotesController < ApplicationController
  before_action :set_trans_note, only: %i[ show edit update destroy ]

  # GET /trans_notes or /trans_notes.json
  def index
    @trans_notes = TransNote.all
  end

  # GET /trans_notes/1 or /trans_notes/1.json
  def show
  end

  # GET /trans_notes/new
  def new
    @trans_note = TransNote.new
  end

  # GET /trans_notes/1/edit
  def edit
  end

  # POST /trans_notes or /trans_notes.json
  def create
    @trans_note = TransNote.new(trans_note_params)

    respond_to do |format|
      if @trans_note.save
        format.html { redirect_to @trans_note, notice: "Trans note was successfully created." }
        format.json { render :show, status: :created, location: @trans_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trans_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trans_notes/1 or /trans_notes/1.json
  def update
    respond_to do |format|
      if @trans_note.update(trans_note_params)
        format.html { redirect_to @trans_note, notice: "Trans note was successfully updated." }
        format.json { render :show, status: :ok, location: @trans_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trans_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trans_notes/1 or /trans_notes/1.json
  def destroy
    @trans_note.destroy
    respond_to do |format|
      format.html { redirect_to trans_notes_url, notice: "Trans note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trans_note
      @trans_note = TransNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trans_note_params
      params.require(:trans_note).permit(:transportation_id, :note_id)
    end
end
