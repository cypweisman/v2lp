class CreateAuditoria < ActiveRecord::Migration[5.0]
  def change
    create_table :auditoria do |t|
      t.integer :room, null: false
      t.integer :capacity, null: false

      t.timestamps null: false
    end
  end
end
