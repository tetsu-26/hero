class TranzactionsController < ApplicationController
  before_action :set_item

  def index
    @item.update(buyer_params)
    @tranzaction = Tranzaction.new
  end

  def new
    @tranzaction = Tranzaction.new
    @tranzactions = @item.tranzactions.includes(:user)
  end

  def create
    @tranzaction = Tranzaction.new(tranzaction_params)
    @tranzaction.save
    redirect_to new_item_tranzaction_path(@item)
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def buyer_params
    params.require(:item).permit(:buyer_id)
  end

  def tranzaction_params
    params.require(:tranzaction).permit(:user_id, :item_id, :comment)
  end
end
