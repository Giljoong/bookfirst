class AddColumn < ActiveRecord::Migration
  def change
    add_column :movies, :rank, :string
  end
end
