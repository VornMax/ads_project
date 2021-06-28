# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
