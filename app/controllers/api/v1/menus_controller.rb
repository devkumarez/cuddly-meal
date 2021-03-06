class Api::V1::MenusController < Api::V1::BaseController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user

  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.active.where(available: params[:meal_hour])
  end

  def weekly_menu
    category = params[:category].to_s.downcase
    food_type = params[:food_type].to_s.downcase
    @menus = Week.find_by_day(params[:day]).menus
    @menus = @menus.where(category: category) if category.present?
    @menus = @menus.where(category: food_type) if food_type.present? && @menus.present?
    render :index
  end

  def menu_categories
    render json: { categories: Menu::categories.keys }
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
  end

  # GET /menus/new
  def new
    @menu = Menu.new
  end

  # GET /menus/1/edit
  def edit
  end

  # POST /menus
  # POST /menus.json
  def create
    params = menu_params.dup
    menu_items = params.delete(:menu_items)
    day = Week.where(day: params.delete(:day)).first
    @menu = Menu.new(params)
    @menu.items << Item.where(id: menu_items)
    respond_to do |format|
      if @menu.save
        day.menus << @menu
        format.html { redirect_to @menu, notice: 'Menu was successfully created.' }
        format.json { render :show, status: :created }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:name, :category, :food_type, :available, {:menu_items => []}, :description, :price, :status, :day)
    end
end
