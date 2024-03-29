defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, :show, messenger: messenger)
  end

  def greeting(conn, _params) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(201, "Hello there")
  end
end
