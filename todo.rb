#todolist
#create a hash to store the list
#add an item to the list
#display the list
#delete an item from the list
#save the list
#load the list - on startup? check previous projects
#mark an item as done

class ToDoList
  attr_reader :list
  def initialize
    @list = {}
  end
  
  def add_item(list_item, description)
    list[list_item] = description
  end
end

list = ToDoList.new
list.add_item("buy petrol", "Drive to petrol station")
p list.list

