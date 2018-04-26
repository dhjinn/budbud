class AddValueToTransactions < ActiveRecord::Migration[5.1]
  def change
  	add_column :transactions, :value, :integer
    add_column :transactions, :user_id, :integer
    add_column :transactions, :date, :date
    add_column :transactions, :notes, :string
    add_column :transactions, :reimbursed, :boolean
    add_column :transactions, :admin_id, :integer
  end
end
