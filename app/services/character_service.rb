class CharacterService

  def initialize
    @base_url = "https://rickandmortyapi.com"
  end

  def import_characters
    conn = Faraday.new(
      :url => @base_url,
      headers: {'Content-Type' => 'application/json'}
      )

    response = conn.get "/api/character"

    records = JSON.parse(response.body)
    records['results'].each do |record|
      Character.
        find_or_initialize_by(id: record['id']).
        update(name: record['name'], status: record['status'], image: record['image'])   
      record['episode'].each do |episode|
        Episode.create(number: episode.split("/").last, character_id: record['id'])
      end
    end
  end
end

  

