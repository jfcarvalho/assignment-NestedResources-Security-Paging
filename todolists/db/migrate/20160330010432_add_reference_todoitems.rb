class AddReferenceTodoitems < ActiveRecord::Migration
  def change
  	add_reference :todo_items, :todo_lists, index:true
  end
end
