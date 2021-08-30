class DestSpecialsController < ApplicationController
  before_action :set_dest_special, only: %i[ show edit update destroy ]

  # GET /dest_specials or /dest_specials.json
  def index
    @dest_specials = DestSpecial.all
  end

  # GET /dest_specials/1 or /dest_specials/1.json
  def show
  end

  # GET /dest_specials/new
  def new
    @dest_special = DestSpecial.new
  end

  # GET /dest_specials/1/edit
  def edit
  end

  # POST /dest_specials or /dest_specials.json
  def create
    @dest_special = DestSpecial.new(dest_special_params)

    respond_to do |format|
      if @dest_special.save
        format.html { redirect_to @dest_special, notice: "Dest special was successfully created." }
        format.json { render :show, status: :created, location: @dest_special }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dest_special.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dest_specials/1 or /dest_specials/1.json
  def update
    respond_to do |format|
      if @dest_special.update(dest_special_params)
        format.html { redirect_to @dest_special, notice: "Dest special was successfully updated." }
        format.json { render :show, status: :ok, location: @dest_special }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dest_special.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dest_specials/1 or /dest_specials/1.json
  def destroy
    @dest_special.destroy
    respond_to do |format|
      format.html { redirect_to dest_specials_url, notice: "Dest special was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dest_special
      @dest_special = DestSpecial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dest_special_params
      params.require(:dest_special).permit(:destination_id, :special_id)
    end
end
