class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.boolean :starred
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
