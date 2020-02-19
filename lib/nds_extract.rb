$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  #pp directors_database
  
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  
  row = 0
   
 
  #getting the name as key for result
  while row < directors_database.length do 
    name = directors_database[row][:name]
    total = 0
    inner_row =0 
    while inner_row < directors_database[row][:movies].length do
      total += directors_database[row][:movies][inner_row][:worldwide_gross]
      inner_row += 1
    end
  
    
    result.merge({name => total})  
    
    
    p total
    total
    row += 1
  end
  pp result
  result
  # end 
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
end
