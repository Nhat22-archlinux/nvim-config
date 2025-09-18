local ls = require("luasnip")
local s = ls.snippet
local ps = ls.parser.parse_snippet

return {
  ps("main", [[
#include <bits/stdc++.h>
using namespace std;

#define ll long long
#define ld long double

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    return 0;
}
  ]]),
}

