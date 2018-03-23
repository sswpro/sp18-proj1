# Q0: Why is this error being thrown?
It is thrown becuase we don't have pokemon table and model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Pikachu, Squirtle, Charmander, and Bulbasaur.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
it calls capture function that is routed in routes.rb.

# Question 3: What would you name your own Pokemon?
PokePoke

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
It redirects to /trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It parses the error string and shows it.

# Give us feedback on the project and decal below!
Thank you!

# Extra credit: Link your Heroku deployed app
