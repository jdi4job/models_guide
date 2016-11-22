class CreateJoinTable1 < ActiveRecord::Migration[5.0]
  def change
    create_join_table :parts, :assemblies, id: false do |t|
      # t.index [:part_id, :assembly_id]
      # t.index [:assembly_id, :part_id]
    end
  end
end
