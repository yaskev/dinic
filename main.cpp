#include <iostream>
#include <vector>
#include <queue>

using namespace std;

class ListGraph {
public:
    ~ListGraph() = default;
    explicit ListGraph(int);
    void AddEdge(int from, int to, int weight);
    void AddOrUpdateEdge(int from, int to, int weight);
    int VerticesCount() const { return static_cast<int>(toList.size()); }
    vector<pair<int, int>> GetNextVertices(int vertex) const { return toList[vertex]; }
    int pos(int x) const { return toPosition[x]; }
    void inc(int x) { toPosition[x]++; }
private:
    vector<vector<pair<int, int>>> toList;
    vector<int> toPosition;
};

void ListGraph::AddOrUpdateEdge(int from, int to, int weight) {
    bool changed = false;
    for( auto& pair : toList[from] ) {
        if( pair.second == to ) {
            pair.first += weight;
            changed = true;
        }
        if( changed ) return;
    }
    toList[from].push_back(make_pair(weight, to));
}

ListGraph::ListGraph(int vertNumber) {
    for( int i = 0; i < vertNumber; ++i ) {
        toList.emplace_back();
    }
    toPosition = vector<int>(vertNumber, 0);
}

void ListGraph::AddEdge(int from, int to, int weight) {
    toList[from].emplace_back(weight, to);
}

int dfs(ListGraph& LNetwork, int current, int sink, vector<int>& path, bool& found, int flow=INT32_MAX) {
    // No back edges because this is a layer network
    if( current == sink ) {
        path.insert(path.begin(), current);
        found = true;
        return flow;
    }
    vector<pair<int, int>> next = LNetwork.GetNextVertices(current);
    for( int i = LNetwork.pos(current); i < next.size(); ++i ) {
        flow = dfs(LNetwork, next[i].second, sink, path, found, min(flow, next[i].first));
        if( flow >= next[i].first || !found )
            LNetwork.inc(current);
        if( found ) {
            path.insert(path.begin(), current);
            break;
        }
    }

    return flow;
}

void rebuildResidualNetwork(ListGraph& RNetwork, const vector<int>& path, int flow) {
    for( int i = 0; i < path.size() - 1; ++i ) {
        RNetwork.AddOrUpdateEdge(path[i], path[i+1], -1 * flow);
        RNetwork.AddOrUpdateEdge(path[i+1], path[i], flow);
    }
}

void rebuildLayerNetwork(ListGraph& LNetwork, const vector<int>& path, int flow) {
    for( int i = 0; i < path.size() - 1; ++i ) {
        LNetwork.AddOrUpdateEdge(path[i], path[i+1], -1 * flow);
    }
}

int findAndPutPath(ListGraph& LNetwork, ListGraph& RNetwork, int source, int sink) {
    bool found = true;
    vector<int> path;
    int totalFlow = 0;
    while( found ) {
        found = false;
        path.clear();
        int flow = dfs(LNetwork, source, sink, path, found);
        if( !found ) return totalFlow;
        totalFlow += flow;
        rebuildResidualNetwork(RNetwork, path, flow);
        rebuildLayerNetwork(LNetwork, path, flow);
    }

    return totalFlow;
}

ListGraph layerNetwork(const ListGraph& graph, int source) {
    ListGraph network(graph.VerticesCount());
    queue<int> queue({source});
    vector<char> visited(graph.VerticesCount(), 0);
    while( !queue.empty() ) {
        visited[queue.front()] = 1;
        for( auto next : graph.GetNextVertices(queue.front()) ) {
            if( !visited[next.second] && next.first > 0 ) {
                queue.push(next.second);
                visited[next.second] = 1;
                network.AddEdge(queue.front(), next.second, next.first);
            }
        }
        queue.pop();
    }
    return network;
}

int dinic(ListGraph& graph, int source, int sink) {
    int totalFlow = 0;
    int flowInserted = 1;
    while( flowInserted ) {
        ListGraph LNetwork = layerNetwork(graph, source);
        flowInserted = findAndPutPath(LNetwork, graph, source, sink);
        totalFlow += flowInserted;
    }

    return totalFlow;
}

int main() {
    int vertices = 0, edges = 0;
    cin >> vertices >> edges;
    ListGraph g(vertices);
    int from = 0, to = 0, weight = 0;
    for( int i = 0; i < edges; ++i ) {
        cin >> from >> to >> weight;
        g.AddEdge(from - 1, to - 1, weight);
    }

    cout << dinic(g, 0, vertices - 1);

    return 0;
}
