class CreateCommands < ActiveRecord::Migration[5.0]
  def change
    create_table :commands do |t|
      t.string :action
      t.references :device, foreign_key: true

      t.timestamps
    end
  end
end
