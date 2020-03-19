class CreateTeashops < ActiveRecord::Migration[5.1]
  def change
    create_table :teashops do |t|
      t.string :cafename
      t.integer :teacount
      t.integer :autoclick

      t.timestamps
    end
  end
end
