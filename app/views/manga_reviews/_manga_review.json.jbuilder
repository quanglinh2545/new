json.extract! manga_review, :id, :user_id, :manga_id, :review, :created_at, :updated_at
json.url manga_review_url(manga_review, format: :json)
