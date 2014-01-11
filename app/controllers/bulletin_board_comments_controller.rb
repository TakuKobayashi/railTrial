class BulletinBoardCommentsController < BaseController
  before_filter :find_bulletin_board
  before_filter :find_bulletin_board_comment, only: [:edit, :update, :destroy]

  def index
    @bulletin_board_comments = @bulletin_board.bulletin_board_comments.includes(:user).order("id DESC").page(params[:page]).per(50)
  end
  
  def new
    @bulletin_board_comment = @bulletin_board.bulletin_board_comments.new
  end

  def create
    @bulletin_board.bulletin_board_comments.create(params[:bulletin_board_comment])
    redirect_to bulletin_board_bulletin_board_comments_url(bulletin_board_id: @bulletin_board.id)
  end

  def edit
    @bulletin_board_comment = @bulletin_board.bulletin_board_comments.where(id: params[:id]).first
  end

  def update
    @bulletin_board_comment.update_attributes!(params[:bulletin_board_comment])
    redirect_to bulletin_board_bulletin_board_comments_url(bulletin_board_id: @bulletin_board.id)
  end

  def destroy
    @bulletin_board_comment.destroy
    redirect_to bulletin_board_bulletin_board_comments_url(bulletin_board_id: @bulletin_board.id)
  end

  private
  def find_bulletin_board
    @bulletin_board = BulletinBoard.where(id: params[:bulletin_board_id]).first
  end

  def find_bulletin_board_comment
    @bulletin_board_comment = BulletinBoardComment.where(id: params[:id]).first
  end
end
