class AddBalanceToAdmin < ActiveRecord::Migration[5.1]
  def change
  	remove_column :admins, :balance
  	add_column :admins, :balance, :decimal, :precision => 8, :scale => 2
  end
end
