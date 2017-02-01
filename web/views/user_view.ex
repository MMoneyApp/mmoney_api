defmodule MmoneyApi.UserView do
  use MmoneyApi.Web, :view
  use JaSerializer.PhoenixView

  attributes [:name, :email, :password_hash, :active, :role, :inserted_at, :updated_at]
  

end
