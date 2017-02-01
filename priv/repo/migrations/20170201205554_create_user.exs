defmodule MmoneyApi.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :password_hash, :string
      add :active, :boolean, default: true, null: false
      add :role, :integer

      timestamps
    end
    create unique_index(:users, [:email])
  end
end
