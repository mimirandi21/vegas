class DestLikesController < ApplicationController
  before_action :set_dest_like, only: %i[ show edit update destroy ]

  # GET /dest_likes or /dest_likes.json
  def index
    @dest_likes = DestLike.all
  end

  # GET /dest_likes/1 or /dest_likes/1.json
  def show
  end

  # GET /dest_likes/new
  def new
    @dest_like = DestLike.new
  end

  # GET /dest_likes/1/edit
  def edit
  end

  # POST /dest_likes or /dest_likes.json
  def create
    @dest_like = DestLike.new(dest_like_params)

    respond_to do |format|
      if @dest_like.save
        format.html { redirect_to @dest_like, notice: "Dest like was successfully created." }
        format.json { render :show, status: :created, location: @dest_like }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dest_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dest_likes/1 or /dest_likes/1.json
  def update
    respond_to do |format|
      if @dest_like.update(dest_like_params)
        format.html { redirect_to @dest_like, notice: "Dest like was successfully updated." }
        format.json { render :show, status: :ok, location: @dest_like }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dest_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dest_likes/1 or /dest_likes/1.json
  def destroy
    @dest_like.destroy
    respond_to do |format|
      format.html { redirect_to dest_likes_url, notice: "Dest like was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dest_like
      @dest_like = DestLike.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dest_like_params
      params.require(:dest_like).permit(:destination_id, :like_id)
    end
end
