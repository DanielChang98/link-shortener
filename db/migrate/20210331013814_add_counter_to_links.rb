class AddCounterToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :counter, :integer
  end
end
