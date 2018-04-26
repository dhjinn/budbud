class RemoveAdminidFromTransactions < ActiveRecord::Migration[5.1]
  def change
    remove_column :transactions, :admin_id, :integer
    add_column :transactions, :club_name, :string
  end
end
