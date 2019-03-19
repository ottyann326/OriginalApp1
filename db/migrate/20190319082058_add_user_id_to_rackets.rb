class AddUserIdToRackets < ActiveRecord::Migration[5.2]
  def change
    add_column :rackets, :user_id, :integer
  end
end
