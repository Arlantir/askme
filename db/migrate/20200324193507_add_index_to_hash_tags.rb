class AddIndexToHashTags < ActiveRecord::Migration[6.0]
  def change
    add_index :hash_tags, :name, unique: true
  end
end
