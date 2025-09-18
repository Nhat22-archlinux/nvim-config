local ls = require("luasnip")
local ps = ls.parser.parse_snippet

return {
  ps("snippet", [=[
local ls = require("luasnip")
local s = ls.snippet
local ps = ls.parser.parse_snippet

return {
  ps("$1", [==[
$0
]==]),
}
]=]),
}

