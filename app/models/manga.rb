class Manga < ApplicationRecord
    has_one_attached :image
      has_many :manga_review, -> { order "created_at DESC"}
end
