class AddTitletoNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :title, :string
    add_column :notes, :context, :text
  end
end
