class CreateGames < ActiveRecord::Migration[5.0]
    def change
        create_table :games do |t|
            t.string :username
            t.string :role
            t.string :points
            t.integer :user_id
        end
    end
end