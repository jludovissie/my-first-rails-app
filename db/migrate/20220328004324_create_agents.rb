class CreateAgents < ActiveRecord::Migration[6.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :phone 
      t.string :broker 
      t.timestamps
    end
  end
end
