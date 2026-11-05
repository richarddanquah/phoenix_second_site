defmodule RaffleyWeb.TipHTML do
  use RaffleyWeb, :html

  embed_templates "tip_html/*"


   def show(assigns) do
    ~H"""
    <div class="tips">
      <h1><%= @greeting %>! Don't Forget...</h1>
      <p><%= @tip.text %></p>
    </div>
    """
 end

end
