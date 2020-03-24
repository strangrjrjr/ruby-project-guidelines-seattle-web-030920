class AddIdColumnToDrops < ActiveRecord::Migration[5.0]
    def change
        add_column :drops, :tagger_id, :integer
    end
end