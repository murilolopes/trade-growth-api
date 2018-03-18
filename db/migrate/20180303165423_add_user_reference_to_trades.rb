class AddUserReferenceToTrades < ActiveRecord::Migration[5.1]
  def change
    add_reference :trades, :user, foreign_key: true
  end
end
