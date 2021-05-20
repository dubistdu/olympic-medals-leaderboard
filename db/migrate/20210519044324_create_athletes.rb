class CreateAthletes < ActiveRecord::Migration[6.1]
  def change
    create_table :athletes do |t|
      t.string :name, null: false
      t.integer :gender, null: false
      t.integer :height
      t.integer :weight
      t.references :country
      t.timestamps
    end
  end
end
