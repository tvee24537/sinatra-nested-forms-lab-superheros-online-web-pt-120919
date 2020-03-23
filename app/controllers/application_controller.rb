require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do 
    erb :super_hero
  end 

  post '/teamer' do
  
    @team = Team.new(params[:team])
    @hero_1 = Hero.new(name: params[:member1_name], power: params[:member1_power], bio: params[:member1_bio])
    @hero_2 = Hero.new(name: params[:member2_name], power: params[:member2_power], bio: params[:member2_bio])
    @hero_3 = Hero.new(name: params[:member3_name], power: params[:member3_power], bio: params[:member3_bio])


    @heroes = Hero.all 
    erb :team
  end 

end
