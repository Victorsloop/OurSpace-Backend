class Api::V1::NotesController < ApplicationController
    skip_before_action :authorized

    def index
        notes = Note.all
        render json: notes
    end

    def show 
        @note = Note.find(params[:id])
        render json: @note
    end 

    def create 
        @note = Note.create!()
        if @note.valid?
            render json: @note
        else 
            render json: {error: 'Failed to post your note'}, status :not_acceptable
        end 
    end 

    def destory
        @note = Note.find(params[:id])
        @note.destory!
        render json {}
    end 

end
