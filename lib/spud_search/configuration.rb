module Spud
  module Search
    include ActiveSupport::Configurable

    config_accessor :base_layout
    self.base_layout = "application" 
  end
end