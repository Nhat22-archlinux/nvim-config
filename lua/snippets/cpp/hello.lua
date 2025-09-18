local ls = require("luasnip")
local s = ls.snippet
local ps = ls.parser.parse_snippet

return {
  ps("hello", [==[
#include <iostream>
using namespace std;


int main(){

return 0
}
]==]),
}
