class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show edit update destroy ]

  # GET /categories or /categories.json
  def index
    @categories = Category.all.sort { |a, b| a[:category] <=> b[:category] }
  end

  # GET /categories/1 or /categories/1.json
  def show
    @foodcats = FoodCategory.where(category_id: params[:id]).to_a
    
    if @foodcats != []
      @foods = []
      @foodcats.each do |f|
        @foods.push(Food.find_by(:id => f[:food_id]))
      end
      @foods = @foods.sort_by { |item| item.name }
    end

    @destcats = DestCategory.where(category_id: params[:id]).to_a
    
    if @destcats != []
      @dests = []
      @destcats.each do |d|
        @dests.push(Destination.find_by(:id => d[:destination_id]))
      end
      @dests = @dests.sort_by { |item| item.name }
    end

    @loccats = TransCategory.where(category_id: params[:id]).to_a
    
    if @loccats != []
      @locs = []
      @loccats.each do |l|
        @locs.push(Transportation.find_by(:id => l[:transportation_id]))
      end
      @locs = @locs.sort_by { |item| item.name }
    end

  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories or /categories.json
  def create
    @category = Category.new(category_params)

    # respond_to do |format|
    #   if @category.save
    #     format.html { redirect_to @category, notice: "Category was successfully created." }
    #     format.json { render :show, status: :created, location: @category }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @category.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: "Category was successfully updated." }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: "Category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:category)
    end
end
