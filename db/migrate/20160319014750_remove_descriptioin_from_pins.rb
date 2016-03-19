class RemoveDescriptioinFromPins < ActiveRecord::Migration
  def change
    remove_column :pins, :descriptioin, :string
  end
end
