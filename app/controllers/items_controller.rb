class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    #Itemというモデルに対してfindメソッドでidを検索させている
    @item = Item.find(params[:id])
  end
end
