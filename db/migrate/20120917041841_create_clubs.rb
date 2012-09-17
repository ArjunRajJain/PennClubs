class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :description
      t.string :contact
      t.string :url
      t.string :type

      t.timestamps
    end
  end
end
