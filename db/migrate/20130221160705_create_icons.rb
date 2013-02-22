class CreateIcons < ActiveRecord::Migration
  def change
    create_table :icons do |t|
      t.belongs_to :web_site
      t.binary :icon

      t.timestamps
    end
    add_index :icons, :web_site_id
  end
end
