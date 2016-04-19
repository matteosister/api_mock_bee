defmodule ApiMockBee.DataNormalizer do
  @moduledoc """
  Module that expose some common utilities to normalize input configuration data
  """

  @doc """
  iex> %{"a" => "b"} |> ApiMockBee.DataNormalizer.normalize
  %{a: "b"}

  iex> %{"a" => "b", :c => "d"} |> ApiMockBee.DataNormalizer.normalize
  %{a: "b", c: "d"}

  iex> %{"a" => "b", :c => %{"d" => "e"}} |> ApiMockBee.DataNormalizer.normalize
  %{a: "b", c: %{d: "e"}}

  iex> %{"a" => "b", :c => %{:d => "e"}, "f" => 1} |> ApiMockBee.DataNormalizer.normalize
  %{a: "b", c: %{d: "e"}, f: 1}
  """
  def normalize(map_data) do
    map_data
    |> Enum.reduce(%{}, &reducer/2)
  end

  defp reducer({k, v}, acc) when is_map(v) do
    Map.put(acc, to_atom(k), normalize(v))
  end
  defp reducer({k, v}, acc) do
    Map.put(acc, to_atom(k), v)
  end

  defp to_atom(key) when is_atom(key), do: key
  defp to_atom(key) when is_binary(key), do: String.to_atom(key)
end
