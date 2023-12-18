class CreateDaes < ActiveRecord::Migration[7.1]
  def change
    create_table :daes do |t|
      t.string :name
      t.string :owner
      t.string :address
      t.string :building
      t.string :floor
      t.string :situation
      t.string :open_days
      t.string :open_hours
      t.boolean :access
      t.boolean :working
      t.timestamps
    end
  end
end
