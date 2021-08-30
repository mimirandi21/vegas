class TransLikesController < ApplicationController
  before_action :set_trans_like, only: %i[ show edit update destroy ]

  # GET /trans_likes or /trans_likes.json
  def index
    @trans_likes = TransLike.all
  end

  # GET /trans_likes/1 or /trans_likes/1.json
  def show
  end

  # GET /trans_likes/new
  def new
    @trans_like = TransLike.new
  end

  # GET /trans_likes/1/edit
  def edit
  end

  # POST /trans_likes or /trans_likes.json
  def create
    @trans_like = TransLike.new(trans_like_params)

    respond_to do |format|
      if @trans_like.save
        format.html { redirect_to @trans_like, notice: "Trans like was successfully created." }
        format.json { render :show, status: :created, location: @trans_like }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trans_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trans_likes/1 or /trans_likes/1.json
  def update
    respond_to do |format|
      if @trans_like.update(trans_like_params)
        format.html { redirect_to @trans_like, notice: "Trans like was successfully updated." }
        format.json { render :show, status: :ok, location: @trans_like }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trans_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trans_likes/1 or /trans_likes/1.json
  def destroy
    @trans_like.destroy
    respond_to do |format|
      format.html { redirect_to trans_likes_url, notice: "Trans like was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trans_like
      @trans_like = TransLike.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trans_like_params
      params.require(:trans_like).permit(:transportation_id, :like_id)
    end
end
