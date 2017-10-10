class AddOwnerToPaintings < ActiveRecord::Migration[5.1]
  def change
    add_reference :paintings, :owner, foreign_key: true
  end
end
