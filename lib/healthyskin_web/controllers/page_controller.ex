defmodule HealthyskinWeb.PageController do
  use HealthyskinWeb, :controller

  plug :put_layout, false

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
