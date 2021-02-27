defmodule ErlearnixWeb.WelcomeController do
  use ErlearnixWeb, :controller

  def index(conn, _params) do
    text(conn, "Welcome to the Elixir API")
  end
end
