class TransCategoriesController < ApplicationController
  before_action :set_trans_category, only: %i[ show edit update destroy ]

  # GET /trans_categories or /trans_categories.json
  def index
    @trans_categories = TransCategory.all
  end

  # GET /trans_categories/1 or /trans_categories/1.json
  def show
  end

  # GET /trans_categories/new
  def new
    @trans_category = TransCategory.new
  end

  # GET /trans_categories/1/edit
  def edit
  end

  # POST /trans_categories or /trans_categories.json
  def create
    @trans_category = TransCategory.new(trans_category_params)

    respond_to do |format|
      if @trans_category.save
        format.html { redirect_to @trans_category, notice: "Trans category was successfully created." }
        format.json { render :show, status: :created, location: @trans_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trans_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trans_categories/1 or /trans_categories/1.json
  def update
    respond_to do |format|
      if @trans_category.update(trans_category_params)
        format.html { redirect_to @trans_category, notice: "Trans category was successfully updated." }
        format.json { render :show, status: :ok, location: @trans_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trans_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trans_categories/1 or /trans_categories/1.json
  def destroy
    @trans_category.destroy
    respond_to do |format|
      format.html { redirect_to trans_categories_url, notice: "Trans category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trans_category
      @trans_category = TransCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trans_category_params
      params.require(:trans_category).permit(:transportation_id, :category_id)
    end
end
