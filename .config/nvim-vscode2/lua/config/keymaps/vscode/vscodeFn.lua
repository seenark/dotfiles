local vscode = require("vscode")

return {
  action = function(action)
    return function()
      vscode.action(action)
    end
  end,
}
