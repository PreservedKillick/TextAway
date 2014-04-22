class EditMessages < ActiveRecord::Migration
  def change
    drop_table :messages
    create_table :messages do |t|
      t.string :from
      t.string :body
      t.belongs_to :contact
    end
  end
end
