defmodule Dots.MouseChannel do
  use Phoenix.Channel

  def join("mouse:click", msg, socket) do
    {:ok, socket}
  end

  def handle_in("click", %{"body" => body}, socket) do
    broadcast! socket, "click", %{body: body}
    {:noreply, socket}
  end
end
