vim.uv = vim.uv or vim.loop

local M = {}
--这行定义了一个 setup 函数，接受一个可选参数 opts，该参数是 LazyVimConfig 类型的配置（通过 ---@param 语法进行类型注解，提示该参数是一个可选的配置对象）
---@param opts? LazyVimConfig
function M.setup(opts)
  require("lazyvim.config").setup(opts)
end

return M
--这行代码将 M 返回，M 作为模块暴露出去，可以被其他文件引用。
--这样，其他地方可以通过 require 引用该模块，并调用其中的 setup 函数来配置 LazyVim。
