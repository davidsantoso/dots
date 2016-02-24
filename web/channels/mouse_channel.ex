defmodule Dots.MouseChannel do
  use Phoenix.Channel

  def join("mouse:click", msg, socket) do
    {:ok, socket}
  end

  def handle_in("click", %{"body" => body}, socket) do
    body = Map.put(body, "color", "#000000")
    broadcast! socket, "click", %{body: body}
    {:noreply, socket}
  end

  defp random_color_picker do
    rand = :rand.uniform(10)

    case rand do
      1 ->
        "#990033"
      2 ->
        "#FF6633"
      3 ->
        "#FFFF33"
      4 ->
        "#339966"
      5 ->
        "#3333CC"
      6 ->
        "#6633CC"
      7 ->
        "#CC00FF"
      8 ->
        "#663300"
      9 ->
        "#FFFFCC"
      _ ->
        "#000000"
    end
  end
end
