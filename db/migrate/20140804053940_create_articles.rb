class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.datetime :published_at
      t.string :author
      t.string :video_url
      t.string :img_url

      t.timestamps
    end
  end
end
