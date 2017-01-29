defmodule PhoenixApi.User do
  use PhoenixApi.Web, :model

  schema "users" do
    field :name, :string
    field :last_name, :string
    field :email, :string
    field :organization, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :last_name, :email, :organization])
    |> validate_required([:name, :last_name, :email, :organization])
  end
end
