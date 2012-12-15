class AddCollegeIdToClubs < ActiveRecord::Migration
  def change
  	add_column :clubs, :college_id, :decimal
  end
end
