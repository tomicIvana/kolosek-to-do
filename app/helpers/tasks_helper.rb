module TasksHelper
  def get_color_class(task)
    if task.finished?
      color = 'red'
    else
      color = 'black'
    end
    color + ' col-xs-6'
  end

  def get_id(task)
    'it' + task.id.to_s
  end

  def show_button(task)
    if task.finished != 1
      button_tag 'Complete', :id => task.id.to_s, :class => 'btn '
    end
  end
end
