require 'spud_core'

require 'acts_as_indexed'
module Spud
	module Search

		 class Engine < Rails::Engine
			engine_name :spud_search
			
			initializer :assets do |config| 
				Rails.application.config.assets.precompile += [ 
				     "spud/admin/search*"
				]
			end

			initializer :model_overrides do |config| 
		      ActiveRecord::Base.class_eval do
		        include Spud::Search::Searchable
		      end
		    end
		 end
	end
end
