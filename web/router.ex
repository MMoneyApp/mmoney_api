defmodule MmoneyApi.Router do
  use MmoneyApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MmoneyApi do
    pipe_through :api
  end
end
