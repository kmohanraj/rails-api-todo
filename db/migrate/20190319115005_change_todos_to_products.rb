class ChangeTodosToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_table :todos, :products
  end
end
