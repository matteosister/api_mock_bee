defmodule ApiMockBee.Matcher do
  use ApiMockBee.Aliases

  def match(conn, conf \\ "") do
    conf
    |> ConfParser.parse
    |> Enum.filter(&match_filter/1)
    |> hd
  end

  defp match_filter(%Match{method: "get"}) do
    true
  end
  defp match_filter(_), do: false
end
