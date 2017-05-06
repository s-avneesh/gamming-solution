class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :writer
      t.string :fiction
      t.string :comedy

      t.timestamps
    end
  end
end
