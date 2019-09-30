class CreateClockTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :clock_times do |t|
      t.datetime :check_in_time
      t.datetime :checkout_time
      t.string :remark
      t.string :status
      t.references :crew, foreign_key: true

      t.timestamps
    end
  end
end
