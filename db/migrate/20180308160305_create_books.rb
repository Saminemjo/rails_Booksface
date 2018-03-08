class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :authors
      t.string :title
      t.string :publisher
      t.string :publishedDate
      t.string :description

      t.timestamps
    end
  end
end
