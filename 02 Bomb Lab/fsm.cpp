#include <bits/stdc++.h>
#define ll long long
#define ull unsigned long long
#define lowbit(x) (x & (-x))
using namespace std;
void solve() {
    vector<vector<int>> dp(7, vector<int>(2));
    for (int i = 0; i <= 6; i++) {
        cin >> dp[i][0] >> dp[i][1];
    }
    int st = (1 << 7) - 1;
    queue<int> q;
    unordered_map<int, int> vis;
    unordered_map<int, int> pre;
    unordered_map<int, char> pre_c;
    q.push(st);
    vis[st] = 1;
    int target;
    while (!q.empty()) {
        auto node = q.front();
        q.pop();
        if ((node & (node - 1)) == 0) {
            target = node;
            break;
        }
        for (int i = 0; i <= 1; i++) {
            int tem = 0;
            for (int j = 0; j <= 6; j++)
                if (node & (1 << j)) {
                    tem |= (1 << dp[j][i]);
                }
            if (!vis.count(tem)) {
                vis[tem] = 1;
                pre[tem] = node;
                pre_c[tem] = char('0' + i);
                q.push(tem);
            }
        }
    }
    string ans = "";
    for (int cur = target; cur != st; cur = pre[cur]) {
        ans.push_back(pre_c[cur]);
    }
    reverse(ans.begin(), ans.end());
    cout << ans << endl;
    return;
}
int main() {
    cin.tie(nullptr)->sync_with_stdio(false);
    solve();
    return 0;
}