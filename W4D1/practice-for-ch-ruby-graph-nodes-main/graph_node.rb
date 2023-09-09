class GraphNode
    attr_reader :value, :neighbors

    def initialize(value)
        @value = value 
        @neighbors = []
    end

    def neighbors=(neighbor)
        @neighbors += neighbor
    end

    def inspect
        @value
    end
end

def bfs(start, target)
    queue = [start]
    visited = []
    until queue.empty?
        p queue
        deleted_node = queue.shift 
        return nil if visited.include?(deleted_node)
        return deleted_node if deleted_node.value == target 
        visited << deleted_node
        queue += deleted_node.neighbors
    end

    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "d")