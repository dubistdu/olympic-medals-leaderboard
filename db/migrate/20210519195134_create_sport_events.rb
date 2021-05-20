class CreateSportEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :sport_events do |t|
      t.string :event
      t.references :sport_category
      t.timestamps
    end
  end
end
