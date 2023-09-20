class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.string :status
      t.references :assigned_to, null: false, foreign_key: true
      t.references :created_by, null: false, foreign_key: true

      t.timestamps
    end
  end
end
