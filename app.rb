require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:num_dice/:dice_sides") do
  
  @num_dice = params.fetch("num_dice").to_i
  @dice_sides = params.fetch("dice_sides").to_i
  @rolls = []

  @num_dice.times do
    die = rand(1..@dice_sides)
    @rolls.push(die)
  end

  erb(:dice_rolls)
end
