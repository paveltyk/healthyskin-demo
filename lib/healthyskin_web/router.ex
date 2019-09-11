defmodule HealthyskinWeb.Router do
  use HealthyskinWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HealthyskinWeb do
    pipe_through :api

    post "/subscriptions", SubscriptionController, :create
  end

  scope "/", HealthyskinWeb do
    get("/*path", PageController, :index)
  end
end
