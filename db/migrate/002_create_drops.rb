class CreateDrops < ActiveRecord::Migration[5.0]
    def change
        create_table :drops do |t|
            t.string :sender
            t.string :receiver
            t.string :msg
        end
    end
end