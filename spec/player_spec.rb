require 'rspec'
require './board'
require './ship'
require './cell'
require './game'
require './player'

RSpec.describe Player do 

  it 'checks that a player is an instance of player class' do 
    user = Player.new('User')
    expect(user).to be_an_instance_of(Player)

  end 



end 