class CreateTrades < ActiveRecord::Migration[5.1]
  def change
    create_table :trades do |t|
      t.decimal :investiment
      t.decimal :profit
      t.decimal :profit_percentage
      t.boolean :direction

      t.timestamps
    end
  end
end
