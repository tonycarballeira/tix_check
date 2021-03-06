class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.text :description
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :tickets, :projects
  end
end
