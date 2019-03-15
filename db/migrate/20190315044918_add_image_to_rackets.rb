class AddImageToRackets < ActiveRecord::Migration[5.2]
  def change
    add_column :rackets, :image, :string
  end
end
