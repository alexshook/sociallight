class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.references :auction
      t.text :content
      t.boolean :viewed
      t.boolean :archived
      t.timestamps
    end
  end
end
