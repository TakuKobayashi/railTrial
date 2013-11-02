class CreateBulletinBoardComments < ActiveRecord::Migration
  def change
    create_table :bulletin_board_comments do |t|
      t.belongs_to :user,           null: false
      t.belongs_to :bulletin_board, null: false
      t.text       :comment
      t.timestamps
    end
    add_index :bulletin_board_comments, :user_id
    add_index :bulletin_board_comments, :bulletin_board_id
  end
end
