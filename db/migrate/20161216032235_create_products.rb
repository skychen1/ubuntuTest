class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :articles
      t.timestamps
    end
  end
end
