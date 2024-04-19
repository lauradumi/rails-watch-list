class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new(list_id: params[:list_id])
  end

  before_action :set_list, only: %i[new create]

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_path(@list_path)
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
