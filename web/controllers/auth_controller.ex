defmodule Postex.AuthController do
  use Postex.Web, :controller
  plug Ueberauth

  def callback(conn, _params) do
    IO.puts "OAUTH ======================"
    IO.inspect conn.assigns
    IO.puts "============================"

    conn
    |> redirect(to: page_path(conn, :index))
  end
end
