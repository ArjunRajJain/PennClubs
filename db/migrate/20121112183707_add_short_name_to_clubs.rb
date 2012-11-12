class AddShortNameToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :short_name, :string
  end
end
