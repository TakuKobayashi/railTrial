class CreateBulletinBoards < ActiveRecord::Migration
  def change
    create_table :bulletin_boards do |t|
      t.belongs_to  :user, null: false
      t.text        :title
      t.text        :description
      t.timestamps
    end
    add_index :bulletin_boards, :user_id
  end
end
