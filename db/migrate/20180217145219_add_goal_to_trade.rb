class AddGoalToTrade < ActiveRecord::Migration[5.1]
  def change
    add_reference :trades, :goal, foreign_key: true
  end
end
