class DestCategoriesController < ApplicationController
  before_action :set_dest_category, only: %i[ show edit update destroy ]

  # GET /dest_categories or /dest_categories.json
  def index
    @dest_categories = DestCategory.all
  end

  # GET /dest_categories/1 or /dest_categories/1.json
  def show
  end

  # GET /dest_categories/new
  def new
    @dest_category = DestCategory.new
  end

  # GET /dest_categories/1/edit
  def edit
  end

  # POST /dest_categories or /dest_categories.json
  def create
    @dest_category = DestCategory.new(dest_category_params)

    respond_to do |format|
      if @dest_category.save
        format.html { redirect_to @dest_category, notice: "Dest category was successfully created." }
        format.json { render :show, status: :created, location: @dest_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dest_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dest_categories/1 or /dest_categories/1.json
  def update
    respond_to do |format|
      if @dest_category.update(dest_category_params)
        format.html { redirect_to @dest_category, notice: "Dest category was successfully updated." }
        format.json { render :show, status: :ok, location: @dest_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dest_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dest_categories/1 or /dest_categories/1.json
  def destroy
    @dest_category.destroy
    respond_to do |format|
      format.html { redirect_to dest_categories_url, notice: "Dest category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dest_category
      @dest_category = DestCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dest_category_params
      params.require(:dest_category).permit(:destination_id, :category_id)
    end
end
