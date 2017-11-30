class RemoveDateFromPrestations < ActiveRecord::Migration[5.1]
  def change
    remove_column :prestations, :date, :datetime
  end
end
