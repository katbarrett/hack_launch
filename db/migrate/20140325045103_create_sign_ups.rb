class CreateSignUps < ActiveRecord::Migration
  def change
    create_table :sign_ups do |t|
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
