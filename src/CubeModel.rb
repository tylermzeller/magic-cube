class CubeModel
     def initialize
         @L = Array.new 9, 0
         @R = Array.new 9, 1
         @U = Array.new 9, 2
         @D = Array.new 9, 3
         @F = Array.new 9, 4
         @B = Array.new 9, 5
         @sides = [@F, @B, @R, @L, @U, @D]
     end
     
     def R #=> affects F, D, U, B
        temp = [@F[8], @F[7], @F[6]] #=> get front face column to begin
        
        swap(temp, @U, 8, 7, 6)
        #puts temp
        swap(temp, @B, 0, 1, 2)
        #puts temp
        swap(temp, @D, 8, 7, 6)
        #puts temp
        swap(temp, @F, 8, 7, 6)
        
     end
     
     def RPrime #=> affects F, D, U, B
        temp = [@F[6], @F[7], @F[8]] #=> get front face column to begin
        
        swap(temp, @D, 6, 7, 8)
        #puts temp
        swap(temp, @B, 2, 1, 0)
        #puts temp
        swap(temp, @U, 6, 7, 8)
        #puts temp
        swap(temp, @F, 6, 7, 8)
        
     end
     
     def R2 #=> affects F, D, U, B
         self.R
         self.R
     end
     
     def L #=> affects F, D, U, B
        temp = [@F[0], @F[1], @F[2]] #=> get front face column to begin
        
        swap(temp, @D, 0, 1, 2)
        #puts temp
        swap(temp, @B, 8, 7, 6)
        #puts temp
        swap(temp, @U, 0, 1, 2)
        #puts temp
        swap(temp, @F, 0, 1, 2)
        
     end
     
     def LPrime #=> affects F, D, U, B
        temp = [@F[2], @F[1], @F[0]] #=> get front face column to begin
        
        swap(temp, @U, 2, 1, 0)
        #puts temp
        swap(temp, @B, 6, 7, 8)
        #puts temp
        swap(temp, @D, 2, 1, 0)
        #puts temp
        swap(temp, @F, 2, 1, 0)
        
     end
     
     def L2 #=> affects F, D, U, B
         self.L
         self.L
     end
     
     def U #=> affects F, B, R, L
        temp = [@F[0], @F[3], @F[6]] #=> get front face column to begin
        
        swap(temp, @L, 0, 3, 6)
        #puts temp
        swap(temp, @B, 0, 3, 6)
        #puts temp
        swap(temp, @R, 0, 3, 6)
        #puts temp
        swap(temp, @F, 0, 3, 6)
        
     end
     
     def UPrime #=> affects F, D, U, B
        temp = [@F[0], @F[3], @F[6]] #=> get front face column to begin
        
        swap(temp, @R, 0, 3, 6)
        #puts temp
        swap(temp, @B, 0, 3, 6)
        #puts temp
        swap(temp, @L, 0, 3, 6)
        #puts temp
        swap(temp, @F, 0, 3, 6)
        
     end
     
     def U2 #=> affects F, D, U, B
         self.U
         self.U
     end
     
     def D #=> affects F, B, R, L
        temp = [@F[2], @F[5], @F[8]] #=> get front face column to begin
        
        swap(temp, @R, 2, 5, 8)
        #puts temp
        swap(temp, @B, 2, 5, 8)
        #puts temp
        swap(temp, @L, 2, 5, 8)
        #puts temp
        swap(temp, @F, 2, 5, 8)
        
     end
     
     def DPrime #=> affects F, D, U, B
        temp = [@F[2], @F[5], @F[8]] #=> get front face column to begin
        
        swap(temp, @L, 2, 5, 8)
        #puts temp
        swap(temp, @B, 2, 5, 8)
        #puts temp
        swap(temp, @R, 2, 5, 8)
        #puts temp
        swap(temp, @F, 2, 5, 8)
        
     end
     
     def D2 #=> affects F, D, U, B
         self.D
         self.D
     end
     
     def F #=> affects U, D, R, L
        temp = [@U[2], @U[5], @U[8]] #=> get front face column to begin
        
        swap(temp, @R, 0, 1, 2)
        #puts temp
        swap(temp, @D, 6, 3, 0)
        #puts temp
        swap(temp, @L, 8, 7, 6)
        #puts temp
        swap(temp, @U, 2, 5, 8)
     end
     
     def FPrime #=> affects U, D, R, L
         temp = [@U[2], @U[5], @U[8]] #=> get front face column to begin
        
        swap(temp, @L, 6, 7, 8)
        #puts temp
        swap(temp, @D, 0, 3, 6)
        #puts temp
        swap(temp, @R, 0, 1, 2)
        #puts temp
        swap(temp, @U, 2, 5, 8)
     end
     
     def F2
         self.F
         self.F
     end
     
     def B #=> affects U, D, R, L
         temp = [@U[6], @U[3], @U[0]] #=> get up face row to begin
        
        swap(temp, @L, 0, 1, 2)
        #puts temp
        swap(temp, @D, 2, 5, 8)
        #puts temp
        swap(temp, @R, 8, 7, 6)
        #puts temp
        swap(temp, @U, 6, 3, 0)
     end
     
     def BPrime #=> affects U, D, R, L
         temp = [@U[0], @U[3], @U[6]] #=> get up face column to begin
        
        swap(temp, @R, 6, 7, 8)
        #puts temp
        swap(temp, @D, 8, 5, 2)
        #puts temp
        swap(temp, @L, 2, 1, 0)
        #puts temp
        swap(temp, @U, 0, 3, 6)
     end
     
     def B2
         self.B
         self.B
     end
     
     def M
        temp = [@F[5], @F[4], @F[3]] #=> get front face middle row to begin
        
        swap(temp, @U, 5, 4, 3)
        #puts temp
        swap(temp, @B, 3, 4, 5)
        #puts temp
        swap(temp, @D, 5, 4, 3)
        #puts temp
        swap(temp, @F, 5, 4, 3)
     end
     
     def MPrime
        temp = [@F[3], @F[4], @F[5]] #=> get front face middle row to begin
        
        swap(temp, @D, 3, 4, 5)
        #puts temp
        swap(temp, @B, 5, 4, 3)
        #puts temp
        swap(temp, @U, 3, 4, 5)
        #puts temp
        swap(temp, @F, 3, 4, 5)
     end
     
     def M2
         self.M
         self.M
     end
     
     def E #=> affects U, D, R, L
        temp = [@U[1], @U[4], @U[7]] #=> get up face middle row to begin
        
        swap(temp, @R, 3, 4, 5)
        #puts temp
        swap(temp, @D, 7, 4, 1)
        #puts temp
        swap(temp, @L, 5, 4, 3)
        #puts temp
        swap(temp, @U, 1, 4, 7)
     end
     
     def EPrime
        temp = [@U[7], @U[4], @U[1]] #=> get up face middle row to begin
        
        swap(temp, @L, 3, 4, 5)
        #puts temp
        swap(temp, @D, 1, 4, 7)
        #puts temp
        swap(temp, @R, 5, 4, 3)
        #puts temp
        swap(temp, @U, 7, 4, 1)
     end
     
     def E2
         self.E
         self.E
     end
     
     def S #=> affects F, B, R, L
        temp = [@F[7], @F[4], @F[1]] #=> get up face middle row to begin
        
        swap(temp, @L, 7, 4, 1)
        #puts temp
        swap(temp, @B, 7, 4, 1)
        #puts temp
        swap(temp, @R, 7, 4, 1)
        #puts temp
        swap(temp, @F, 7, 4, 1)
     end
     
     def SPrime #=> affects F, B, R, L
        temp = [@F[1], @F[4], @F[7]] #=> get up face middle row to begin
        
        swap(temp, @R, 1, 4, 7)
        #puts temp
        swap(temp, @B, 1, 4, 7)
        #puts temp
        swap(temp, @L, 1, 4, 7)
        #puts temp
        swap(temp, @F, 1, 4, 7)
     end
     
     def S2
         self.S
         self.S
     end
     
     def solved?
         @sides.each do |side|
             if (!side.all? { |tile| tile == side[0]})
                 return false
             end
         end
         return true
     end
     
     private def swap (buffer, face, i, j, k)
         temp_buffer = [face[i], face[j], face[k]] #=> get current face row or column
         
         # swap current face row or column with buffer
         face[i] = buffer[0]
         face[j] = buffer[1]
         face[k] = buffer[2]
         
         buffer.replace temp_buffer #=> update buffer with current face row or column
         return
     end
     
     def to_s
         string = ""
         
         4.times do |x|
            if (x == 0)
                string += " F   B   R   L   U   D\n"
            elsif(x == 1)
                @sides.each do |side|
                    string += side[0].to_s +  side[3].to_s + side[6].to_s + " " 
                end
                string += "\n"
            elsif(x == 2)
                @sides.each do |side|
                    string += side[1].to_s +  side[4].to_s + side[7].to_s + " " 
                end
            string += "\n"
            elsif(x == 3)
                @sides.each do |side|
                    string += side[2].to_s +  side[5].to_s + side[8].to_s + " " 
                end
            end
         end
         
         return string
     end
 end