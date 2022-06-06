json.extract! book, :id, :title, :author, :description, :image_url, :publication_date, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
