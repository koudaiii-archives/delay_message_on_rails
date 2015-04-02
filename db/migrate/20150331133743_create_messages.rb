class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :recipient_email
      t.text :text
      t.datetime :delay_until_time
      t.integer :timezone_offset
      t.boolean :sent, default: false # update this line

      t.timestamps null: false
    end
  end
end
