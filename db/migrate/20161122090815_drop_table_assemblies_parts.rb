class DropTableAssembliesParts < ActiveRecord::Migration[5.0]
  def change
    drop_table :assemblies_parts
  end
end
