# coding: utf-8
class BulletinBoardsController < BaseController
  before_filter :find_bulletin_board, only: [:edit, :update, :destroy]

  def index
    @bulletin_boards = BulletinBoard.includes([:user, :bulletin_board_comments]).all
  end
  
  def new
    @bulletin_board = BulletinBoard.new
  end

  def create
    BulletinBoard.create(params[:bulletin_board])
    redirect_to bulletin_boards_url
  end

  def edit
  end

  def update
    @bulletin_board.update_attributes!(params[:bulletin_board])
    redirect_to bulletin_boards_url
  end

  def destroy
    @bulletin_board.destroy
    redirect_to bulletin_boards_url
  end

  private
  def find_bulletin_board
    @bulletin_board = BulletinBoard.where(id: params[:id]).first
  end
end
