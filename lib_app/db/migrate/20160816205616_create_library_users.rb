class CreateLibraryUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :library_users do |t|
      t.references :user, foreign_key: true
      t.references :library, foreign_key: true

      t.timestamps
    end
  end
end
