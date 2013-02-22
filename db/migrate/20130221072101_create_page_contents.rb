class CreatePageContents < ActiveRecord::Migration
  def change
    create_table :page_contents do |t|
      t.belongs_to :web_site
      t.text :body
      t.text :headers

      t.timestamps
    end
    add_index :page_contents, :web_site_id
  end
end
