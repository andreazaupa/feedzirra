module Feedzirra

  module Parser
    class ITunesRSSOwner
      include SAXMachine
      include FeedUtilities
      element :"itunes:name", :as => :name
      element :"itunes:email", :as => :email
      elements :'media:content', :as => :images, :value => :url, :with => {:medium => :image}

    end
  end

end
