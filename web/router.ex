defmodule MmoneyApi.Router do
  use MmoneyApi.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
  end

  scope "/api", MmoneyApi do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
  end
end
