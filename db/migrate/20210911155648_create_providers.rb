class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
