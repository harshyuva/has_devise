class CreateUsers < ActiveRecord::Migration[6.0]
  def change
     add_column :users, :lastname, :string
    create_table :users do |t|
      t.string :name
      t.text :body
      t.string :lastname

      t.timestamps
    end
  end
end
