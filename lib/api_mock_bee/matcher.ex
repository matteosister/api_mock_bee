defmodule ApiMockBee.Matcher do
  @moduledoc """
  Main logic of the application, parses, filters, and extracts the best match to the request
  """

  use ApiMockBee.Aliases

  def match(conn, conf \\ "") do
    conf
    |> ConfParser.parse
    |> Enum.filter(&(Match.match?(&1, conn)))
    |> choose_best_match
  end

  defp choose_best_match([]), do: {:error, nil}
  defp choose_best_match([first | _]), do: {:ok, first}

  defp match_filter(%Match{method: "get"}) do
    true
  end
  defp match_filter(_), do: false
end
