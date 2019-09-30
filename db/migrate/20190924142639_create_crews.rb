class CreateCrews < ActiveRecord::Migration[6.0]
  def change
    create_table :crews do |t|
      t.string :name
      t.string :telephone

      t.timestamps
    end
  end
end
