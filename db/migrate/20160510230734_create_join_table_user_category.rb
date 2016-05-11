class CreateJoinTableUserCategory < ActiveRecord::Migration
  def change
    create_join_table :users, :categories do |t|
      t.index [:user_id, :category_id]
    end
  end
end
