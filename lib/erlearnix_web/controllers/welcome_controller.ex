defmodule ErlearnixWeb.WelcomeController do
  use ErlearnixWeb, :controller
  alias Erlearnix.Numbers

  def index(conn, %{"filename" => filename}) do
    filename
    |> Numbers.sum_from_file()
    |> handle_response(conn)

    text(conn, "Welcome to the Elixir API")
  end

  defp handle_response({:ok, %{result: result}}, conn) do
    conn
    |> IO.inspect()
    |> put_status(:ok)
    |> json(%{message: "Welcome to the Elixir API. Here is your number #{result}"})
  end

  defp handle_response({:error, reason}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(reason)
  end
end
