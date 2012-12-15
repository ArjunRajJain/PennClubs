class AddClubIdToPreferences < ActiveRecord::Migration
  def change
  	add_column :preferences, :club_id, :decimal
  end
end
