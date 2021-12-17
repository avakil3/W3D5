require "byebug"
class PolyTreeNode
    attr_reader :children, :parent, :value
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end 

    def parent=(node)
        self.parent.children.delete(self) if @parent != nil
        @parent = node
        if @parent != nil && !@parent.children.include?(self)
            @parent.children << self 
        end
    end

    def add_child(node)
         node.parent = self
        self.children << node if !self.children.include?(node)
    end

    def remove_child(node)
        if self.children.include?(node)
            node.parent = nil
        else
            raise "Error: not a child"
        end


    end
    
end