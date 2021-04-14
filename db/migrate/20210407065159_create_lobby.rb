class CreateLobby < ActiveRecord::Migration[6.1]
  def change
    create_table :lobbies do |t|
      t.string :code
      t.string :status
      t.integer :current_question_index
      t.timestamps
    end
  end
end
