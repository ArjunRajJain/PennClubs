class DeleteColumn< ActiveRecord::Migration
    def self.down
        remove_column :clubs, :tag
    end
end
