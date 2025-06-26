#include <iostream>
#include <queue>
using namespace std;

int main()
{
    int query;
    cin >> query;

    queue<int> queue;

    for (int i = 0; i < query; i++) {
        int n, x;
        cin >> n;
        if (n == 1) {
            cin >> x;
            queue.push(x);
        } else if (n == 2) {
            cout << queue.front() << endl;
            queue.pop();
        }
    }
}