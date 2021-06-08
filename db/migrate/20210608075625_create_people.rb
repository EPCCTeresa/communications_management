class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.date :date_of_birth

      t.timestamps
    end
  end
end
