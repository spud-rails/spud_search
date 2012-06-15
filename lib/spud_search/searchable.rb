module Spud
  module Search
    module Searchable
    	extend ActiveSupport::Concern
    	included do
    		extend ClassMethods
    	end
    	module ClassMethods
    		def searchable
    			if self.name == 'SpudPage'
    				self.instance_eval do
    					acts_as_indexed :fields => [:name,:meta_keywords,:meta_description], :if => Proc.new { |page| page.published == true && page.visibility == 0 }
    				end
    			end
    			if self.name == 'SpudPost'
    				self.instance_eval do
    					acts_as_indexed :fields => [:title,:content], :if => Proc.new { |post| post.published_at <= Time.now.utc && post.visible == true }
    				end
    			end
    		end
    	end
    end
  end
end