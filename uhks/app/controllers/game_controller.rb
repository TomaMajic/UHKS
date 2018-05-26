class GameController < ApplicationController

    def index
        @game = Game.last
    end

    def show
    end

    def new
    end

    def create
        # @current_last_id = Game.last.id

        @city = City.where(name: params[:game][:city]).first
        @licence = Licence.where(name: params[:game][:min_licence]).first
        @home_team = Team.where(name: params[:game][:home_team]).first
        @away_team = Team.where(name: params[:game][:away_team]).first
        @event_time = params[:game][:event_time].to_datetime
        @num_refs = params[:game][:min_refs].to_i

        game = Game.new(city_id: @city.id, minimal_licence_id: @licence.id, home_team_id: @home_team.id, away_team_id: @away_team.id, event_time: @event_time, num_of_refs: @num_refs)

        if game.save
            redirect_to(game_index_url)
        end
    end

    def edit
        @game = Game.find(params[:id])
    end

    def update
    end

    def destroy
        redirect_to(game_index_url)
    end

    def show_refs_for_game
        @game_id = params[:id]
        @referees = Game.find(params[:id]).users
        @refs_remaining = params[:remaining]

        respond_to do |format|
            @html_content = render_to_string :partial => 'game/referees_by_game'
            format.json { render :json => { html_content: @html_content} }
        end
    end

    def add_new_ref
        success = false
        ref = User.where(email: params[:ref_mail]).first
        ref_game = UserGame.new(user_id: ref.id, game_id: params[:id])

        if ref_game.save
            success = true
        end

        render :json => { success: success}
    end

    def remove_ref
        success = false
        ref = User.find(params[:ref_id])
        ref_game = UserGame.where(user_id: ref.id, game_id: params[:id]).first
        rg_id = ref_game.id

        ref_game.destroy

        if UserGame.where(id: rg_id).count == 0
            success = true
        end

        render :json => { success: success}
    end

    def delete_game
        success = false

        game = Game.find(params[:id])
        ref_games = UserGame.where(game_id: params[:id]).all

        if ref_games.count > 0
            ref_games.each do |rg|
                rg.destroy
            end 
        end 

        game.destroy

        if Game.where(id: params[:id]).count == 0
            success = true
        end

        render :json => { success: success}
    end









end
