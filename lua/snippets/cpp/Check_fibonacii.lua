local ls = require("luasnip")
local s = ls.snippet
local ps = ls.parser.parse_snippet

return {
  ps("Check_fibonacii", [==[
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

bool check_Fibonacii(ll n);
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

bool check_Fibonacii(ll n){
	ll Fibo[100];
	Fibo[0] = 0;
	Fibo[1] = 1;
	for(int i = 2; i <= 92; i++ ){
		Fibo[i] = Fibo[i - 1] + Fibo[i - 2];
	}
	for(int i = 0; i <= 92; i++){
		if(n == Fibo[i]) return true;
	}
	return false;
}

void solve(long long n, long long a[]){
	int cnt = 0;
	FOR(i,0,n){
		if(check_Fibonacii(a[i])) cout << a[i] << " ";
		cnt ++;
	}
	if(cnt = 0) cout << "NONE";
}
]==]),
}
