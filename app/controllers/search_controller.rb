class SearchController < ApplicationController
	layout Spud::Search.base_layout
	require 'will_paginate/array'
	def index
		@results = []
		if params[:phrase].blank?
			return
		end
		@pages = []
		@posts = []
		begin
			@pages = SpudPage.find_with_index(params[:phrase])
		rescue
		end

		begin
			@posts = SpudPost.find_with_index(params[:phrase])
		rescue
			
		end

		@results += @pages
		@results += @posts
		
		@results = @results.paginate :page => params[:page]
	end
end
