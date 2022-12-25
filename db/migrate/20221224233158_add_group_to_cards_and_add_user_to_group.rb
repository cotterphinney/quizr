class AddGroupToCardsAndAddUserToGroup < ActiveRecord::Migration[6.1]
  def change
    add_reference :cards, :group, foreign_key: true
  end
end
