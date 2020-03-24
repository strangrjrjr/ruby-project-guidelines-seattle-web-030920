class CreateCops < ActiveRecord::Migration[5.0]
    def change
        create_table :cops do |t|
            t.string :name
            t.integer :intelligence
            t.integer :num_caught
        end
    end
end