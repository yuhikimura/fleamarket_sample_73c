class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :destination_first_name,        null:false
      t.string :destination_family_name,       null:false
      t.string :destination_first_name_kana,   null:false
      t.string :destination_family_name_kana,  null:false

      t.integer :postal_code,                  null:false, precision: 7
      t.string :prefecture,                    null:false
      t.string :city,                          null:false
      t.string :address,                       null:false
      t.string :building
      t.integer :phone_number

      t.references :user,                      null:false, foreign_key: true
      t.timestamps
    end
  end
end
