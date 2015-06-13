class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    #Itemというモデルに対してfindメソッドでidを検索させている
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create

    # formから投げられたデータを受け取る
    @item = Item.new(item_params)

    #︎ これを保存する
    @item.save

    #️ show.html.erb に飛ばす
    redirect_to "/item/#{@item.id}"
  end

  private
  #安全のために private を入力

  def item_params
# params.require(:key).permit(:filter)

    params.require(:item).permit(
      :name,
      :price,
      :seller_id,
      :description,
      :email,
      :image_url
      )
    end




end
