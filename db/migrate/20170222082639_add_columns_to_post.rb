class AddColumnsToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :self_rating, :string
  end
end
