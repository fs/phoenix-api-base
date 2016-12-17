defmodule PhoenixApiBase.Router do
  use PhoenixApiBase.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixApiBase do
    pipe_through :api
  end
end
