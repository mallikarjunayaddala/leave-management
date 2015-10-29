class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.date :from_date
      t.date :to_date
      t.text :reason
      t.string :type_of_leave
      t.integer :no_of_days

      t.timestamps null: false
    end
  end
end
