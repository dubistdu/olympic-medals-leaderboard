class CreateMedals < ActiveRecord::Migration[6.1]
  def change
    create_table :medals do |t|
      t.string :medal_name, null:false
      t.timestamps
    end
  end
end
