class CreateSupportBundles < ActiveRecord::Migration
  def change
    create_table :support_bundles do |t|
      t.string :uid
      t.string :date_uploaded
      t.string :date_created
      t.string :company
      t.string :model
      t.text :error_type
      t.string :environment
      t.string :unit_type
      t.string :firmware

      t.timestamps
    end
  end
end
