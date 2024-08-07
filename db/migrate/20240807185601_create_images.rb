class CreateImages < ActiveRecord::Migration[7.1]
  def change
    create_table :images do |t|
      t.references :post, null: false, foreign_key: true
      t.binary :image_data
      t.string :image_name

      t.timestamps
    end
  end
end
