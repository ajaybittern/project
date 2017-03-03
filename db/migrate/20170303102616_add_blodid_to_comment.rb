class AddBlodidToComment < ActiveRecord::Migration[5.0]
  def change
  	add_column :comments, :blog_id, :string
  end
end
