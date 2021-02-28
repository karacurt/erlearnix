defmodule Erlearnix do
  alias Erlearnix.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
