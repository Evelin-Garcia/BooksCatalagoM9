class CreateReaders < ActiveRecord::Migration[6.1]
  def change
    create_table :readers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.text :comment

      t.timestamps
    end
  end
end
