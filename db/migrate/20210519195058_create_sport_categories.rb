class CreateSportCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :sport_categories do |t|
      t.string :sports_name
      t.string :season
      t.timestamps
    end
  end
end
