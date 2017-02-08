class CreateMoneyFlows < ActiveRecord::Migration
  def change
    create_table :money_flows do |t|
      t.integer :amount_cents, default: 0
      t.text :description
      t.string :name
      t.string :flow_type

      t.timestamps
    end
  end
end
