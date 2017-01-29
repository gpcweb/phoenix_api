defmodule PhoenixApi.UserTest do
  use PhoenixApi.ModelCase

  alias PhoenixApi.User

  @valid_attrs %{email: "some content", last_name: "some content", name: "some content", organization: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
