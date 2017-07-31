class TagsController < ApplicationController

before_filter :require_login, only: [:destroy]

def show
	@tag = Tag.find(params[:id])

end

def index
	@tag = Tag.all
end

def destroy

	@tag = tag.find(params[:id])

	@tag.destroy

	flash.notice = "Tag '#{@tag.title}' Destroyed!"
	
	redirect_to '/tags/'

end

end
