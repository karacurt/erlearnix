defmodule Erlearnix.Users.Create do
  alias Erlearnix.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
