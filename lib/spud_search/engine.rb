require 'spud_core'
require 'spud_search/searchable'

require 'acts_as_indexed'
module Spud
	module Search
		 class Engine < Rails::Engine
			engine_name :spud_search
			initializer :admin do
				Spud::Core.configure do |config|
				  config.admin_applications += [{:name => "Search",:thumbnail => "spud/admin/template_thumb.png",:url => "/spud/admin/template_root",:order => 10}]
				end
			end
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
