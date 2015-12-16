class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :murderer_first_name
      t.string :murderer_last_name
      t.date :birthdate
      t.string :location
      t.string :weapon
      t.integer :number_of_victims
      t.string :sentence

      t.timestamps null: false
    end
  end
end
