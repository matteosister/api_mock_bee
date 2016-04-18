defmodule ApiMockBee.Case do
  use ExUnit.CaseTemplate

  using do
    quote do
      use ApiMockBee.Aliases
    end
  end
end
