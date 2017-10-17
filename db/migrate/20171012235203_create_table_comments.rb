class CreateTableComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :comment
      t.references :painting, foreign_key: true
      t.timestamps
    end
  end
end
