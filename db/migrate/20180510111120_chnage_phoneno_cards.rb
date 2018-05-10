class ChnagePhonenoCards < ActiveRecord::Migration[5.1]
  def change
    change_column :cards, :phone_no, :string
  end
end
