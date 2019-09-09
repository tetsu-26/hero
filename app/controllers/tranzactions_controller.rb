class TranzactionsController < ApplicationController
  before_action :set_item

  def index
    @item.update(buyer_params)
    @tranzaction = Tranzaction.new
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def buyer_params
    params.require(:item).permit(:buyer_id)
  end
  
end
