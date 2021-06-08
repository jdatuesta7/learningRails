class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :fullname
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
