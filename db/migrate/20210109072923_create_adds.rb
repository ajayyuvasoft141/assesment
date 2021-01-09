class CreateAdds < ActiveRecord::Migration[6.0]
  def change
    create_table :adds do |t|
    	t.references :ads_category
    	t.references :ads_size
    	t.references :adboard
    	t.string :name
    	t.integer :ads_duration 
    	t.boolean :active, :default => true
    	t.integer :charge
      t.datetime :start_add
      t.timestamps
    end
  end
end
