class AddIdentifierToBusinessProzess < ActiveRecord::Migration
  def change
    add_column :business_processes, :identifier, :string
    add_index :business_processes, :identifier, {:name => 'identifier', :unique => true } 
  end
end
