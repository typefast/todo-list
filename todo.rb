#todolist
#create a hash to store the list
#add an item to the list
#display the list
#delete an item from the list
#save the list
#load the list - on startup? check previous projects
#mark an item as done

class ToDoList
  attr_accessor :list
  
  def initialize
    @list = {}
    #load_list()
  end
  
  def load_list
    # if File.exists?("list_of_tasks.yml")
    #   @list = YAML.load_file("list_of_tasks.yml")
    # end
  end
  
  def save
    # File.open("list_of_tasks.yml", "w") do |file|
    #   file.write(list.to_yaml)
    # end
  end
  
  def add_item(list_item, description, completed="No")
    array = [description, completed]
    list[list_item] = array
  end
  
  def delete_item(list_item)
    if list.has_key?(list_item) #check if the given key exists?
      list.delete(list_item)
    else 
      puts "No task was found with the name #{list_item}."
    end
  end
  
  def done(list_item, completed="Yes")
    list[list_item][1] = completed
  end
  
  def list_tasks
    puts "\n\n"
    puts "TASK".ljust(20) + "DESCRIPTION".ljust(30) + "Completed"
    puts "-" * 60
    list.each do |task, description|
      puts "#{task}".ljust(20) + "#{description[0]}".ljust(30) + " -#{description[1]} "
      puts "-" * 60
    end
  end
end

list = ToDoList.new
list.add_item("added", "added")
list.add_item("addbbbb", "added")
list.add_item("addedccccccc", "added")
list.list_tasks
list.done("added")
list.delete_item("addbbbb")
list.list_tasks






