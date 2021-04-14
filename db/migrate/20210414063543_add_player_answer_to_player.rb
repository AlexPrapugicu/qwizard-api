class AddPlayerAnswerToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :player_answers, :player, null: true, foreign_key: true
  end
end
