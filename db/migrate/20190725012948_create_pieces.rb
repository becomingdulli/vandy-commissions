class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
