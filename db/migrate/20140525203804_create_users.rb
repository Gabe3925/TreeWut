class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :profile_image_url
      t.string :description
      t.string :remember_token
      t.timestamps
    end
  end
end
