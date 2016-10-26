# Q0: Why is this error being thrown?
We were trying to access the Pokemon database but there wasn't a pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They're generated when we seed. They all don't have trainer ID's meaning they are wild. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It makes a button to capture a wild pokemon visible. capture_path(id: @pokemon) is calling capture on the wild pokemon, meaning it routes the button to the capture method in the Pokemons controller and makes sure you have the ID of the captured pokemon. 

# Question 3: What would you name your own Pokemon?
Stefan

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
Didn't do a path, just specified the URL as a string. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It shows errors according to the validate parameters. 

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
