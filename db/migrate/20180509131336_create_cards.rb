class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.float :amount
      t.string :name_on_card
      t.string :order_no
      t.timestamps
    end
  end
end
