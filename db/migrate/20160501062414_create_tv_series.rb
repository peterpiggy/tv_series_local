class CreateTvSeries < ActiveRecord::Migration
  def change
    create_table :tv_series do |t|
    	t.string :name, null: false, default: ''
    	t.integer :season, null: false, default: 1
    	t.integer :episode, null: false, default: 1
    	t.date :next_episode_date

      t.timestamps null: false
    end
  end
end
