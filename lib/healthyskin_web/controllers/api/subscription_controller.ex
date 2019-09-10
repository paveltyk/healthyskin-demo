defmodule HealthyskinWeb.SubscriptionController do
  use HealthyskinWeb, :controller

  def create(conn, %{"email" => email}) do
    IO.inspect(email, label: "Email submitted")
    send_resp(conn, 200, "")
  end
end
