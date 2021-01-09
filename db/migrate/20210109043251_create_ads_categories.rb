class CreateAdsCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :ads_categories do |t|
    	t.string :ads_type
    	t.integer :ads_cost
      t.timestamps
    end
  end
end
