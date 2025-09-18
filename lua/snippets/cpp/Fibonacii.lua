local ls = require("luasnip")
local s = ls.snippet
local ps = ls.parser.parse_snippet

return {
  ps("Fibonacii", [==[
long long Fibonacii(long long n);

long long Fibonacii(long long n){
	if(n == 1) return 0;
	if(n == 2) return 1;
	// 1 = 0 + 1
	// Fi1 = 1 & Fi2 = Fi = 1 
	long long Fi, Fi1 = 1, Fi2 = 1;
	FOR(i , 3, n){
		Fi = Fi1 + Fi2;
		Fi1 = Fi2;
		Fi2 = Fi;
	}
	return Fi;
}

]==]),
}
