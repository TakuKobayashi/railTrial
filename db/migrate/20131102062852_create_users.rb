# coding: utf-8
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false, default: "名無しさん"
      t.string :ip_address, null: false
      t.timestamps
    end
    add_index :users, :ip_address
  end
end
