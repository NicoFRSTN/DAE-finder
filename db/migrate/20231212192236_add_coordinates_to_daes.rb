class AddCoordinatesToDaes < ActiveRecord::Migration[7.1]
  def change
    add_column :daes, :lattitude, :float
    add_column :daes, :longitude, :float
  end
end
