class CreateUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :updates do |t|
      t.string :title
      t.text :details
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
