class Api::V1::NotesController < ApplicationController
    skip_before_action :authorized

    def index
        notes = Notes.all.includes()
    end
end
