class ItemsController < ApplicationController
  def index
    @item = Item.all
  end

  def show
    #Itemというモデルに対してfindメソッドでidを検索させている
    @item = Item.find(params[:id])
  end
end
