defmodule ApiMockBee.Aliases do
  @moduledoc """
  use this module to import all ApiMockBee aliases
  """

  defmacro __using__(_) do
    quote do
      alias ApiMockBee.Conf.Parser, as: ConfParser
      alias ApiMockBee.Conf.Match
      alias ApiMockBee.Conf.Response
      alias ApiMockBee.Matcher
      alias ApiMockBee.DataNormalizer
    end
  end
end
