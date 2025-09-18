local ls = require("luasnip")
local s = ls.snippet
local ps = ls.parser.parse_snippet

return {
  ps("demo", [==[
#include <bits/stdc++.h>
using namespace std;

#define ll long long
#define ld long double
#define ar array

#define vt vector
#define pb push_back

#define F_OR_INC(i, a, b) for (int i = (a); i < (b); i++)

// Hàm write để in giá trị
template <class T>
void write(T x) {
  cout << x;
}

// Hàm print để in giá trị và xuống dòng
void print() { write("\n"); }
template <class H, class... T>
void print(const H& h, const T&... t) {
  write(h);
  if (sizeof...(t)) write(' ');
  print(t...);
}

// Hàm đọc dữ liệu
template <class T>
void read(T& x) {
  cin >> x;
}

// Hàm giải bài toán
void solve() {
   ll a, b;
    read(a); // Đọc giá trị của a
    read(b); // Đọc giá trị của b
    ll sum = a + b; // Tính tổng
    print(sum); // In tổng ra
}

int main() {
  ios::sync_with_stdio(0); // Tắt tính năng đồng bộ hóa giữa cin/cout và stdio
  cin.tie(0); // Tháo nối cin khỏi cout để cải thiện hiệu suất

  int t;
  read(t);  // Đọc số lượng test cases

  F_OR_INC(i, 0, t) {
    solve();  // Gọi hàm giải bài toán
  }

  return 0;
}
]==]),
}
