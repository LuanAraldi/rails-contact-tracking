class CreateAccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :accesses do |t|

      t.timestamps
    end
  end
end
