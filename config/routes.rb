Rails.application.routes.draw do

  get("/", { :controller => "game", :action => "rules" })
  get("/:move", { :controller => "game", :action => "play" })

end
