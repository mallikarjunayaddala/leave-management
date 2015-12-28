class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.date :from_date, :null => false
      t.date :to_date, :null => false
      t.text :reason
      t.string :type_of_leave

      t.integer :no_of_days, :default => 0

      t.timestamps null: false
    end
  end
end
