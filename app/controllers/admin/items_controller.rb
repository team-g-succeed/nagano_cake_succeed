class Admin::ItemsController < ApplicationController
  # before_action :authenticate_admin!
  before_action :set_items, only: [:show, :edit, :update]
  
  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
  end 
  
  def edit
  end
  
  def update
  end 
  
  private
  
  def item_params
    params.require(:item).permit(:name, :introduction,:price, :is_active, :image)
  end 
  
end
