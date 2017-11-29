class AddDateToPrestations < ActiveRecord::Migration[5.1]
  def change
    add_column :prestations, :date, :datetime
  end
end
