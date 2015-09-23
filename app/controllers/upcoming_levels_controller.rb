class UpcomingLevelsController < ApplicationController
  def index

    request = RestClient.get("http://tmi.twitch.tv/group/user/nicktron/chatters")
    parsed = JSON.parse(request)
    @mods = parsed['chatters']['moderators']
    @viewers = parsed['chatters']['viewers']
  end
end
