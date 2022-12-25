class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :term
      t.string :definition
      t.integer :familiarity

      t.timestamps
    end
  end
end
