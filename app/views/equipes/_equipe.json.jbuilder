json.extract! equipe, :id, :nom_equipe, :nom_capitaine, :telephone, :email, :created_at, :updated_at
json.url equipe_url(equipe, format: :json)
