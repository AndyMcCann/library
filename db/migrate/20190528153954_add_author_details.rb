class AddAuthorDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :details, :text
  end
end
