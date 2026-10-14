defmodule RaffleyWeb.RuleController do
  use RaffleyWeb, :controller

  alias Raffley.Rules

  def index(conn, _params) do
    emoji = ~w(😀 😃 😄 😁) |> Enum.random() |> String.duplicate(5)

    rules = Rules.list_rules()
    render(conn, :index, emoji: emoji, rules: rules)
  end
end
