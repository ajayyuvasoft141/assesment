class CreateAdboards < ActiveRecord::Migration[6.0]
  def change
    create_table :adboards do |t|
      	t.string :name
      	t.string :total_revenue
      t.timestamps
    end
  end
end
