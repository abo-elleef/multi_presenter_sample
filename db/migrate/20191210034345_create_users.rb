class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :email
      t.integer :category_id

      t.timestamps
    end
  end
end
