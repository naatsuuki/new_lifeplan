class AddPersonDetailsToPeople < ActiveRecord::Migration[7.1]
  def change
    add_column :people, :name, :string
    add_column :people, :birth_year, :integer
  end
end
