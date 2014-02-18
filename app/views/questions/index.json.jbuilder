json.array!(@questions) do |question|
  json.extract! question, :id, :name, :description, :answer, :genre_id, :default_point, :attach_filename, :attach_file
  json.url question_url(question, format: :json)
end
