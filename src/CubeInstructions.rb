# Created October 20th, 2015
# Last modified October 21st, 2015

class CubeInstructions
    def initialize(cube)
        @cube = cube
    end

    private def execute(token)
        case token
        when "F"
            @cube.F
        when "F'"
            @cube.FPrime
        when "F2"
            @cube.F2
        when "B"
            @cube.B
        when "B'"
            @cube.BPrime
        when "B2"
            @cube.B2
        when "R"
            @cube.R
        when "R'"
            @cube.RPrime
        when "R2"
            @cube.R2
        when "L"
            @cube.L
        when "L'"
            @cube.LPrime
        when "L2"
            @cube.L2
        when "U"
            @cube.U
        when "U'"
            @cube.UPrime
        when "U2"
            @cube.U2
        when "D"
            @cube.D
        when "D'"
            @cube.DPrime
        when "D2"
            @cube.D2
        end
    end

    private def tokenize(instructions)
        tokens = instructions.split(" ")
        tokens.each do |token|
            unless (token.upcase =~ /\A[BDFLRU]('|2)?\z/)
                puts "ERROR -- Unrecognized Instruction: " + token
                return []
            end
        end
        return tokens
    end

    def perform(instructions)
        tokens = tokenize(instructions)
        tokens.each do |token|
            execute(token)
        end
    end
end
 