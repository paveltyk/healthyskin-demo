defmodule HealthyskinWeb.PageView do
  use HealthyskinWeb, :view

  def render("index.html", _assigns) do
    {:safe, File.read!("assets/build/index.html")}
  end
end
