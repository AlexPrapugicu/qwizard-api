class CreatePlayerAnswer < ActiveRecord::Migration[6.1]
  def change
    create_table :player_answers do |t|
      t.integer :response_time
      t.timestamps
    end
  end
end
