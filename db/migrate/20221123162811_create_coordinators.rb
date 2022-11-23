class CreateCoordinators < ActiveRecord::Migration[7.0]
  def change
    create_table :coordinators do |t|
      t.string :name , null:false , index:true
      t.string :phone_number , null:false , index:true
      t.string :email , null:false , index:true

      t.timestamps
    end
  end
end
