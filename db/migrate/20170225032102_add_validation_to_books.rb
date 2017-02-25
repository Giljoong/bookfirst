class AddValidationToBooks < ActiveRecord::Migration
  def change
    change_column :books, :content, :text, null: false
  end
end
