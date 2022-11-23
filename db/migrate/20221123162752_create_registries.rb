class CreateRegistries < ActiveRecord::Migration[7.0]
  def change
    create_table :registries do |t|
      t.string :name , null:false , index:true
      t.string :location , null:false , index:true

      t.timestamps
    end
  end
end
