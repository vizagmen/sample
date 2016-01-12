class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_admin, :boolean
    add_column :users, :address, :text
    add_column :users, :reference_no, :text
    add_column :users, :is_paid, :boolean
  end
end
