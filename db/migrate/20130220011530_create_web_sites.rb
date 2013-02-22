class CreateWebSites < ActiveRecord::Migration
  def change
    create_table :web_sites do |t|
      t.integer :rank
      t.string :url
      t.text :snippet

      t.timestamps
    end
  end
end
