class AddRatingToClubs < ActiveRecord::Migration
  def change
  	add_index :clubs, :rating, :decimal 
  end
end
