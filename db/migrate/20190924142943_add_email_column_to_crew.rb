class AddEmailColumnToCrew < ActiveRecord::Migration[6.0]
  def change
    add_column :crews, :email, :string
  end
end
