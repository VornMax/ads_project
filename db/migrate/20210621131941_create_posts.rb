# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :user_id
      t.string :status
      t.string :teg
      t.string :picture_url

      t.timestamps
    end
  end
end
