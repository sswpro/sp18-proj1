class PokemonsController < ApplicationController
	def capture
		poke = Pokemon.find(params[:id])
		poke.trainer_id = current_trainer.id
		poke.save
		redirect_to root_path
	end
  def new
  	puts(params)
  	puts(params["pokemons/new_sub"])
  	pokemon = params["pokemons/new_sub"]
  	if pokemon != nil
  		Pokemon.create(
    		name: pokemon["name"],
    		level: rand(1..20),
    		health: 100,
    		ndex: pokemon["ndex"],
    		trainer_id: current_trainer.id
  		)
  		redirect_to "/trainer?"
  	end
  end 
end