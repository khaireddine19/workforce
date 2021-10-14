class Post < ApplicationRecord
  enum status: [:published, :draft, :archived]

  validates :title, presence: true, length: { in: 6..30 }
end
