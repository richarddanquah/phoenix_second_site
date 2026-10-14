defmodule RaffleyWeb.TipController do
  use RaffleyWeb, :controller

  alias Raffley.Tips

  def index(conn, _params) do
    tips = Tips.list_tips()
    render(conn, :index, tips: tips)
  end
end
