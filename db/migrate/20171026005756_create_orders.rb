class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :address
      t.string :email
      t.integer :pay_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
