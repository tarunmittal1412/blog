module Geek
    def geeks
      puts 'GeeksforGeeks!'
    end
  end
    
  class Lord
   
    # only Lord can access geek methods
    # with the instance of the class.
    include Geek
  end
    
  class Star
     
    # only Lord can access geek methods
    # with the class definition.
    extend Geek
  end
    
  # object access
  Lord.new.geeks
   
  # class access
  Star.geeks
   
  # NoMethodError: undefined  method
  # `geeks' for Lord:Class
  Lord.geeks