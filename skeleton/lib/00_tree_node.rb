require "byebug"
class PolyTreeNode
    attr_reader :children, :parent, :value
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end 

    def parent=(node)
        @parent = node
        if @parent != nil && !@parent.children.include?(self)
            @parent.children << self 
        end
    end



    
end