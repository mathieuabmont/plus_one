class AddColumnToPrestations < ActiveRecord::Migration[5.1]
  def change
    add_column :prestations, :location, :string
    add_column :prestations, :job, :string
  end
end
