class FoodsController < ApplicationController
  before_action :set_food, only: %i[ show edit update destroy ]

  # GET /foods or /foods.json
  def index
    @foods = Food.all.sort { |a, b| a[:name] <=> b[:name] }
  end

  # GET /foods/1 or /foods/1.json
  def show
    
    @foodspecials = FoodSpecial.where(food_id: params[:id]).to_a
    
    if @foodspecials != []
      @specials = []
      @foodspecials.each do |s|
        @specials.push(Special.find_by(:id => s[:special_id]))
      end
    end

    
    @foodnotes = FoodNote.where(food_id: params[:id]).to_a
    
    if @foodnotes != []
      @notes = []
      @foodnotes.each do |n|
        @notes.push(Note.find_by(:id => n[:note_id]))
      end
    end

    
    @foodrecs = FoodRecommendation.where(:food_id => params[:id]).to_a
    
    if @foodrecs != []
      @recs = []
      @foodrecs.each do |r|
        @recs.push(Recommendation.find_by(:id => r[:recommendation_id]))
      end
    end


    @foodlikes = FoodLike.where(food_id: params[:id]).to_a
    
    if @foodlikes != []
      @likes = []
      @foodlikes.each do |l|
        @likes.push(Like.find_by(:id => l[:like_id]))
      end
    end
  end

  # GET /foods/new
  def new
    @food = Food.new
  end

  # GET /foods/1/edit
  def edit
  end

  # POST /foods or /foods.json
  def create
    @food = Food.new(food_params)

    respond_to do |format|
      if @food.save
        format.html { redirect_to @food, notice: "Food was successfully created." }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1 or /foods/1.json
  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to @food, notice: "Food was successfully updated." }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1 or /foods/1.json
  def destroy
    @food.destroy
    respond_to do |format|
      format.html { redirect_to foods_url, notice: "Food was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_params
      params.require(:food).permit(:name, :hours, :website)
    end
end
