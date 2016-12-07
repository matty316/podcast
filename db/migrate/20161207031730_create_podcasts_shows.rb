class CreatePodcastsShows < ActiveRecord::Migration[5.0]
  def change
    create_table :podcasts_shows do |t|
      t.string :name
      t.string :email
      t.string :title
      t.text :description
      t.string :language
      t.string :copyright
      t.datetime :last_build_date
      t.boolean :explicit
      t.string :author
      t.text :summary
      t.string :subtitle
      t.string :primary_category
      t.string :secondary_category

      t.timestamps
    end
  end
end
