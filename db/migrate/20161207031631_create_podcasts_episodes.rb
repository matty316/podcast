class CreatePodcastsEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :podcasts_episodes do |t|
      t.string :title
      t.string :link
      t.datetime :pub_date
      t.text :description
      t.string :file
      t.text :summary

      t.timestamps
    end
  end
end
