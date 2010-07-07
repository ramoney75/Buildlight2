# Delcom build light controller
#
# Written by Josh Price, ThoughtWorks

class BuildLight
  BLUE = 3
  RED = 5
  GREEN = 6
  YELLOW = 4
  OFF = 7

  def building
    turn BLUE
  end

  def success
    turn GREEN
  end

  def partial_success
    turn YELLOW
  end

  def fail
    turn RED
  end

  def warning
    turn BLUE
  end
  
  def reset
    turn OFF
  end

private
  def turn(light)
    execute "turn", "0 0 101 2 #{light}"
  end

  def execute(name, command)
    puts "#{name}: #{command}"
    `light #{command}`
  end
end
