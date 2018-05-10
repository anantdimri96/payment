class AddAttToCards < ActiveRecord::Migration[5.1]
  def change

    add_column :cards, :name, :string
    add_column :cards, :txnid, :integer
    add_column :cards, :email, :string
    add_column :cards, :phone_no, :integer

    remove_column :cards, :name_on_card
    remove_column :cards, :order_no


  end
end
