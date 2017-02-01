defmodule MmoneyApi.User do
  use MmoneyApi.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string, virtual: true
    field :password_hash, :string
    field :active, :boolean, default: false
    field :role, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :email, :password_hash, :active, :role])
    |> validate_required([:name, :email, :password_hash, :active, :role])
  end
end
