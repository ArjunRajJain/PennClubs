class DropPreference < ActiveRecord::Migration
  def down
  	drop_table :Preferences
  end
end
