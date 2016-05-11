class AddAccountTagToUsers < ActiveRecord::Migration
  def change
    add_column :users, :acctag, :integer
  end
end
