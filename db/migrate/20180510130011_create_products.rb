class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
    	t.string :code
    	t.string :name
    	t.boolean :pinned, default: false
    	
      t.timestamps
    end
  end
end
