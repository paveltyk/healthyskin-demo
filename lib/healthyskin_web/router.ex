defmodule HealthyskinWeb.Router do
  use HealthyskinWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HealthyskinWeb do
    pipe_through :api
  end
end
