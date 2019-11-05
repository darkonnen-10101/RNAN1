class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :personas, :proyectos do |t|
      # t.index [:persona_id, :proyecto_id]
      # t.index [:proyecto_id, :persona_id]
    end
  end
end
