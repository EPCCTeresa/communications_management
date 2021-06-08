class CreateCommunications < ActiveRecord::Migration[6.1]
  def change
    create_table :communications do |t|
      t.references :person, index: true
      t.references :creator, references: :person, index: true
      t.references :receptor, references: :person, index: true
      t.references :previous_communication, references: :communications, index: true
      t.string :title
      t.string :content
      t.timestamps
    end
  end
end
