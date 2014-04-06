json.array!(@book_progresses) do |book_progress|
  json.extract! book_progress, :id, :percent, :book_id, :date
  json.url book_progress_url(book_progress, format: :json)
end
