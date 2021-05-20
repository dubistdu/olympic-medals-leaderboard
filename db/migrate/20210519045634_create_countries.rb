class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :country, null:false
      t.timestamps
    end
  end
end
