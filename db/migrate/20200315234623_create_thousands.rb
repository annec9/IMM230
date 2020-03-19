class CreateThousands < ActiveRecord::Migration[5.1]
  def change
    create_table :thousands do |t|
      t.text :thing

      t.timestamps
    end
  end
end
