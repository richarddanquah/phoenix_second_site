defmodule RaffleyWeb.EffortLive do
  use RaffleyWeb, :live_view

  # mount
  def mount(_params, _session, socket) do
    socket = assign(socket, responders: 3, minutes_per_responder: 10)

    # IO.inspect(socket)

    {:ok, socket}
  end

  # render
  def render(assigns) do
    ~H"""
    <div class="effort">
    <h1>Community Love</h1>
    <section>
    <div>
     <%!-- render the number of responders here --%>
     <%= @responders %>
    </div>
    &times;
    <%= @minutes_per_responder%>
    <div>
     <%!-- render the average minutes per responder here --%>
     <%= @responders / @minutes_per_responder %>
    </div>
    =
    <div>
     <%!-- render the total effort (in minutes) here --%>
      <%= @responders * @minutes_per_responder %>
    </div>
    </section>
    </div>


    """
  end
end
