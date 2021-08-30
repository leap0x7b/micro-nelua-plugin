local micro = import("micro")
local config = import("micro/config")

function init()
  config.AddRuntimeFile("nelua", config.RTHelp, "README.md")
  config.AddRuntimeFile("nelua", config.RTSyntax, "syntax.yaml")
  linter.makeLinter("nelua", "nelua", "nelua", {"--lint", "%f"}, "%f:%l:%c:.+: %m")
end
