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
  
  def delete_item(list_item)
    if list.has_key?(list_item)
      list.delete(list_item)
    else 
      puts "No task was found with the name #{list_item}."
    end
  end
  
  def list_tasks
    puts "\n\n"
    puts "TASK".ljust(20) + "DESCRIPTION"
    puts "-" * 50
    list.each do |task, description|
      puts "#{task}".ljust(20) + "#{description}"
      puts "-" * 50
    end
  end
end

list = ToDoList.new
list.add_item("buy petrol", "Drive to petrol station")
list.add_item("buy cigars", "Don't Smoke kids")
list.list_tasks
list.delete_item("buy cigars")
list.delete_item("buy stuff")
list.list_tasks


