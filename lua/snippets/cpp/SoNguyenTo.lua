local ls = require("luasnip")
local s = ls.snippet
local ps = ls.parser.parse_snippet

return {
  ps("Snt", [==[
bool sNT(ll n);
bool sNT(ll n){
	if(n < 2 ) return false;
	for(int i = 2; i <= sqrt(n); i++){
		if(n % i == 0){
			return false;
		}
	}
	return true;
}
]==]),
}
