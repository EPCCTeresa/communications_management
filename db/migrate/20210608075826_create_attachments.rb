class CreateAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :attachments do |t|
      t.references :communication, references: :communications, index: true
      t.timestamps
    end
  end
end
