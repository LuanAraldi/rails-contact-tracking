class CreateAccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :accesses do |t|
      t.string :url
      t.belongs_to :contact
      t.timestamps
    end
  end
end
