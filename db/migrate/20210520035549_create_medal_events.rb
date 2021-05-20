class CreateMedalEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :medal_events do |t|
      t.references :sport_event, :athlete, :medal
      t.timestamps
    end
  end
end
