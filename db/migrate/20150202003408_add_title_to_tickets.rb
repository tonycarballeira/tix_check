class AddTitleToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :title, :string
  end
end
