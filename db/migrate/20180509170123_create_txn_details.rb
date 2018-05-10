class CreateTxnDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :txn_details do |t|
      t.integer "txnid"
      t.float "amount"
      t.string "name"
      t.string "email"
      t.bigint "pay_id"
      t.string "status"
      t.string "mode"
      t.timestamps
    end
  end
end
