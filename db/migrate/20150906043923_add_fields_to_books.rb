class AddFieldsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :released_on, :date
    add_column :books, :description, :text
  end
end
