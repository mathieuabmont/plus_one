class AddCoordinatesToPrestations < ActiveRecord::Migration[5.1]
  def change
    add_column :prestations, :latitude, :float
    add_column :prestations, :longitude, :float
  end
end
