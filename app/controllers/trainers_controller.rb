class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def profile
  	@pokemons = Pokemon.where("trainer_id=?",current_trainer.id)
  end

  def index
    @trainers = Trainer.all
  end
  
  def damage
  	pokeId = params[:id]
  	pokemon = Pokemon.find(pokeId)
  	pokemon.health = pokemon.health - 10
  	pokemon.save
  	if pokemon.health == 0
  		pokemon.destroy
  	end
  	redirect_to "/trainer"
  end

  def show
    @trainer = Trainer.find(params[:id])
  end
end