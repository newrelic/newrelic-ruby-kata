class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :cars, :force => true do |t|
      t.string :make

      t.timestamps
    end

    create_table :drivers, :force => true do |t|
      t.string :last_name
      t.belongs_to :car

      t.timestamps
    end
  end
end
