class CreateIdentityClientUsers < ActiveRecord::Migration
  def change
    create_table :identity_client_users do |t|
      t.string :provider
      t.string :uid
      t.string :name

      t.timestamps
    end
  end
end
