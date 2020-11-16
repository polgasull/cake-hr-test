class AddCharacterToEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_reference :episodes, :character, null: false, foreign_key: true
  end
end
