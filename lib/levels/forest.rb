require 'gui_loader'

class Forest

  # Player starts here, waking up in the forest.
  def self.start_point(data)
    puts data
    message = []
    message[0] = "You see the sun creeping through your closed eyes."
    message[1] = "As you begin to open them, you realised you are no longer in your warm bed."
    message[2] = "As you look around you see trees. How did you get here?"
    message[3] = "You seem to be fully dressed."
    message[4] = "'Come on #{data[:character]}, lets get up!' You think to yourself."
    Gui.gui_message_intake(message)
    return "left_or_right", "Forest"
  end

  # The first decision, left or right.
  def self.left_or_right(data)
    message = []
    message[0] = "You look around and see a path near by."
    message[1] = "You cannot see any sign posts and you dont recognise the area"
    message[2] = "You can either go left or right."
    message[3] = "Which way do you go?: "
    options = []
    options[0] = "Left"
    options[1] = "Right"
    choice = Gui.gui_message_intake(message, options)
    return choice.downcase, "Forest"
  end

  # If they picked left, they are out, and are heading to the town.
  def self.left(data)
    message = []
    message[0] = "You walk fruther and the trees begin to thin out."
    message[1] = "You start to see buildings through the trees."
    message[2] = "You emerge from the forest and before you is a town."
    message[3] = "A signpost nearby points in two directions. One to the forst and says 'Rackstone Forest'"
    message[4] = "The other to the town and says 'High Church'. You don't recognise either of these names"
    Gui.gui_message_intake(message)
    # return "next_level", "Town"
    return "next_level", "Incomplete"
  end

  # If not, their journey continues. Deeper in to the forrest they go.
  def self.right(data)
    message = []
    message[0] = "You start your journey along this road to see where it goes."
    message[1] = "As you continue, the forest seems to get thicker arround you."
    message[2] = "Off to the side of the path, you see smoke rising. As you get closer you realise it's a house."
    message[3] = "You come closer to the front of the house."
    options = []
    options[0] = "Walk past"
    options[1] = "Walk up and knock on the door"
    choice = Gui.gui_message_intake(message, options)
    if choice == "Walk past"
      choice = "go_past"
    else
      choice = "knock"
    end
    # return choice, "Forest"
    return "next_level", "Incomplete"
  end


  def self.go_past(data)
  end

  def self.knock(data)
  end




end
