class AddRatingToClubs < ActiveRecord::Migration
  def change
  	add_index :clubs, :college_id
  end
end
