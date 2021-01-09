class CreateAdsSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :ads_sizes do |t|
    	t.string :ads_size
      t.timestamps
    end
  end
end
