require_relative '../../config/application'

class TaskController

  def run!
    user_input
    match_command
  end

  def user_input
    @user_input = ARGV
  end

  def match_command

    case @user_input.shift
      when 'add'
        add
      when 'delete'
        delete
      when 'list'
        list
      else
        raise "Please input a command (add, delete, list)"
      end
    end
    

  def add
    Task.create(:todo => @user_input.join(' '))
  end

  def delete

    # You need an integer
    id = ARGV.join('').to_i
    Task.destroy(id) if Task.exists?(id)
  end

  def list
    #Task.all returned instances of a Task- as an array
    Task.all.each do |task|
      puts task.todo
    end
  end

end
 


TaskController.new.run!

# add
# delete
# list
