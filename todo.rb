
class ToDoList
  attr_accessor :list
  
  def initialize
    @list = {}
    run()
  end
  
  def run
    while true
      puts "What do you want to do?: "
      puts "1. add item"
      puts "2. list tasks"
      puts "3. mark done"
      puts "4. delete item"
      puts "5. to exit"
      action = gets.chomp.downcase
      
    case action
    when "1"
      puts "Add item title: "
      title = gets.chomp
      puts "Add short description: "
      description = gets.chomp
      add_item(title, description)
      puts "Item added\n\n"
    when "2"
      list_tasks
      puts "\n"
    when "3"
      puts "What task do you want to mark as done?"
      puts "Enter the title of the task: "
      task = gets.chomp.downcase
      done(task)
      puts "Task: #{task} updated.\n\n"
    when "4"
      puts "What task do you want to delete?"
      puts "Enter the title of the task: "
      task = gets.chomp.downcase
      delete_item(task)
      puts "Task #{task} deleted.\n\n"
    when "5"
    puts "Thank you, Goodbye "
      exit(0)  
    else 
      puts "That is not an option. Enter a number."
    end
    end
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







