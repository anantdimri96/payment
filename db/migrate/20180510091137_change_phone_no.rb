class ChangePhoneNo < ActiveRecord::Migration[5.1]
  def change
    change_column :cards, :phone_no, :bigint

  end
end
