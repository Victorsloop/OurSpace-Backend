class Api::V1::DillemasController < ApplicationController
    skip_before_action :authorized

    def index 
        dillemas = Dillema.all
        render json: dillemas
    end 

    def show 
        @dillema = Dillema.find(params[:id])
        render json: @dillema
    end 

    def create 
        @dillema = Dillema.create!(dillema_params)
        if @dillema.valid? 
            render json: @dillema 
        else 
            render json: {error: 'Failed to post your dillema'}, status: :not_acceptable
        end 
    end 
    
    def destroy 
        @dillema = Dillema.find(params[:id])
        @dillema.destory!
        render json:{}
    end 
    
end
