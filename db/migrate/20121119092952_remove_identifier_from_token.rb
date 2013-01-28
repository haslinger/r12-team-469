class RemoveIdentifierFromToken < ActiveRecord::Migration
  def change
    remove_column :tokens, :identifier
  end
end
