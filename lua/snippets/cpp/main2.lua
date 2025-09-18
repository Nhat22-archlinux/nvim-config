local ls = require("luasnip")
local s = ls.snippet
local ps = ls.parser.parse_snippet

return {
  ps("main2", [[
#include <bits/stdc++.h>
using namespace std;

#define ll long long
#define ld long double
#define FOR(i, a, b) for (int i = (a); i < (b); i++)
#define FOR_(i, a, b) for (int i = (a); i > (b); i--)
const int MAX_val = 1e7;
const int MIN_val = -1e7;
#define MAX 100
void nhapN(long long &n);
void nhaparray(long long &n, long long a[]);
void solve(long long n, long long a[]);


ll d[MAX_val+1] = {0};
ll f[MAX_val+1] = {0};
int main(){
	ios::sync_with_stdio(0);
  	cin.tie(0);
  	long long n;
  	nhapN(n);
  	long long a[n];
  	nhaparray(n,a);
  	solve(n,a);


	return 0;
}
void nhapN(long long&n){
	cin >> n;
}
void nhaparray(long long &n, long long a[]){
	FOR(i,0,n){
		cin >> a[i];
		
	}
}



void solve(long long n, long long a[]){
	
}
  ]]),
}

