#include <iostream>
#include <queue>
using namespace std;

int main()
{
    int query;
    cin >> query;

    queue<int> q;

    for (int i = 0; i < query; i++) {
        int n, x;
        cin >> n;
        if (n == 1) {
            cin >> x;
            q.push(x);
        } else if (n == 2) {
            cout << q.front() << endl;
            q.pop();
        }
    }
}