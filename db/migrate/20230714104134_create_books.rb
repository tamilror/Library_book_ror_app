class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.boolean :available
      t.boolean :checked_out
      t.timestamps
    end
  end
end
