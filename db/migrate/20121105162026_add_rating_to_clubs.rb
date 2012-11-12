class AddRatingToClubs < ActiveRecord::Migration
  def change
  	add_column :clubs, :rating, :decimal 
  end
end
