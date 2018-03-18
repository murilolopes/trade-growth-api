class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.decimal :investiment
      t.decimal :percentage_per_trade
      t.decimal :avarage_daily_profit
      t.decimal :avarage_daily_loss

      t.timestamps
    end
  end
end
