class CreateWares < ActiveRecord::Migration[5.2]
  def change
    create_table :wares do |t|
      t.string :title
      t.string :category
      t.string :phase
      t.string :brand
      t.string :image
      t.text :details
      t.string :annex
      t.integer :quantity
      t.string :q_unit
      t.decimal :evaluation, precision: 2, scale: 1
      t.boolean :in_showroom
      t.string :s_location
      t.decimal :weight_kg, precision: 4, scale: 2
      t.integer :dim_a_cm
      t.integer :dim_b_cm
      t.integer :dim_h_cm
      t.string :d_location
      t.decimal :price, precision: 5, scale: 2
      t.decimal :down_p, precision: 4, scale: 2
      t.date :deadline
      t.string :contract
      t.text :bill
      t.text :conclusion
      t.integer :target_no
      t.integer :ok_no

      t.timestamps
    end
  end
end
