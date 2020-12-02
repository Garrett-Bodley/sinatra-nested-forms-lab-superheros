require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :team
    end

    post '/teams' do
        @team = Team.new(params[:team])
        params[:heros].each do |details|
            Hero.new(details, params[:team][:name])
        end
        @heros = Hero.all
        erb :display_team
    end


end
