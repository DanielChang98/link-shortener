class AddDefaultValueToCounter < ActiveRecord::Migration[5.2]
  def change
    change_column_default :links, :counter, from: nil, to: 0
  end
end
