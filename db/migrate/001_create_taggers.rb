class CreateTaggers < ActiveRecord::Migration[5.0]
    def change
        create_table :taggers do |t|
            t.string :name
            t.boolean :caught
            t.integer :success
        end
    end
end