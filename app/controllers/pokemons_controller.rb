class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to "/"
	end 

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		if @pokemon.health <= 0
			@pokemon.destroy
			redirect_to "/trainers/" + @pokemon.trainer_id.to_s
		else 
			@pokemon.save
			redirect_to "/trainers/" + @pokemon.trainer_id.to_s
		end
	end

	def new 
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.level = 1 
		@pokemon.health = 100
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.save
			redirect_to "/trainers/" + @pokemon.trainer_id.to_s
		else 
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to pokemons_new_path
		end
	end 

	private 
	def pokemon_params
		params.require(:pokemon).permit(:name)
	end

end
