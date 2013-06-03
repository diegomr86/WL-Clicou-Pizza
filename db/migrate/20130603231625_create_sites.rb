class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :domain, null: false
      t.string :code, null: false

      t.timestamps
    end
  end
end
