class AddAgentIdToHouse < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :agent_id, :int
  end
end
