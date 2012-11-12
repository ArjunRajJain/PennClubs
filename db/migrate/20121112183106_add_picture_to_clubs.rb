class AddPictureToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :picture, :string
  end
end
