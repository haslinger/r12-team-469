class AddIdentifierToToken < ActiveRecord::Migration
  def change
    add_column :tokens, :identifier, :string
  end
end
