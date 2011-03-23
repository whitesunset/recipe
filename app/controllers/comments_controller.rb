class CommentsController < ApplicationController
  before_filter :authenticate, :only => :destroy

  def create
      @item = Item.find(params[:item_id])
      @comment = @item.comments.create(params[:comment])
      redirect_to item_path(@item)
  end

  def destroy
      @item = Item.find(params[:item_id])
      @comment = @item.comments.find(params[:id])
      @comment.destroy
      redirect_to item_path(@item)
  end
end
