class AddPlayerAnswerToAnswer < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :player_answers, :answer, null: true, foreign_key: true
  end
end
