class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table   :participants do |t|
      t.belongs_to :registry, null: false, foreign_key: true
      t.belongs_to :coordinator, null: false, foreign_key: true
      t.string     :gender , null:false , index:true
      t.date       :birthday , null:false , index:true

      t.timestamps
    end
  end
end
