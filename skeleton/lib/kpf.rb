require_relative "00_tree_node.rb"

class KnightPathFinder

    def initialize(starting_position)
        @root_node = PolyTreeNode.new(starting_position)
       # build_move_tree(@root_node)
    end

    # This method will check to see if the given position [#,#] can be reached from the current position of the King
    #Not all 8 moves can be done from every position given there are corners
    def self.valid_moves(pos)
       row,col = pos
       all_possible_moves = [[row-1,col], [row+1, col], [row,col+1], [row,col-1], [row+1,col+1], [row-1,col-1], [row+1,col-1], [row-1,col+1]]
       all_possible_moves.select {|move| within_board?(move) }
    end

    def self.within_board?(pos)
        row,col = pos
        return true if (0..7).include?(row) && (0..7).include?(col)
        return false
    end

    

end


kpf = KnightPathFinder.new([0, 0])