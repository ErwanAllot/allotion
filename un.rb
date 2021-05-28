require 'benchmark'


    
def vs
  a = 265335483829436438764567
  b = 627325637472
     ((a-1) * (b-1) + a.gcd(b) - 1) / 2   
end

def vs2
 a = 265335483829436438764567
 b = 627325637472

c = (a-1) % 2
cc = (a-1) / 2
d = (b-1) % 2
dd = (b-1) / 2

e = cc * (dd+1) + (cc+1) * dd if c == 1 && d == 1
e = cc * dd + (cc+1) * dd if c == 1 && d == 0
e = cc * dd + cc * (dd+1) if c == 0 && d == 1
e = cc * dd * 2 if c == 0 && d == 0
z = a.gcd(b)/2
e + z
end



def ala
 a = 265335483829436438764567
 b = 627325637472
         g = 0
    zz = 0
    loop do
        max = [a,b].max
        min = [a,b].min
        reste = max % min
        quotient = max / min
        g = g + quotient * (min * (min-1) / 2)
        max == b ? b = reste : a = reste
        break if reste == 0
        zz += 1
    end
     zz
     g 
end


def alazz
 a = 265335483829436438764567
 b = 627325637472
    g = 0
    zz = 0
    loop do
        max = [a,b].max
        min = [a,b].min
        reste = max % min
        quotient = max / min
        kk = (min * (min-1) / 2)
        g = g + quotient * kk
        max == b ? b = reste : a = reste
        break if reste == 0
        zz += 1
    end
     zz
   g 
end



def ala2

 a = 265335483829436438764567
 b = 627325637472
    g = 0
    loop do
        max = [a,b].max
        min = [a,b].min
        reste = max % min
        quotient = max / min
        
        f = (min / 2) * (min-1) if min % 2 == 0
        f = (min / 2) * (min-1) + (min / 2) if min % 2 == 1
        g = g + quotient * f

        max == b ? b = reste : a = reste
        break if reste == 0
    end
     g 

end


    def ala3

    a = 265335483829436438764567
    b = 627325637472
    g = 0
        loop do
            max = [a,b].max
            min = [a,b].min
            reste = max % min
            quotient = max / min
            
            min % 2 == 0 ? f = (min / 2) * (min-1) : f = (min / 2) * (min-1) + (min / 2) 
              
            g = g + quotient * f
    
            max == b ? b = reste : a = reste
            break if reste == 0
        end
         g 
    end


        def ala4

        a = 265335483829436438764567
        b = 627325637472
        g = 0
            loop do
                max = [a,b].max
                min = [a,b].min
                reste = max % min
                quotient = max / min

                k = min / 2
                min % 2 == 0 ? f = k * (min-1) : f = k * (min-1) + k 
               
                g = g + quotient * f
        
                max == b ? b = reste : a = reste
                break if reste == 0
            end
             g 
        end



        def ala5

        a = 265335483829436438764567
        b = 627325637472
        g = 0
            loop do
                max = [a,b].max
                min = [a,b].min
                reste = max % min
                quotient = max / min

                k = min / 2
                # ça réduit temps 
                min.even? == true ? f = k * (min-1) : f = k * (min-1) + k 
               
                g = g + quotient * f
        
                max == b ? b = reste : a = reste
                break if reste == 0
            end
             g 
        end




        def ala6
        a = 265335483829436438764567
        b = 627325637472
                                    g = 0
            loop do
                max = [a,b].max
                min = [a,b].min
                reste = max % min
                quotient = max / min

                k = min / 2
                # ça réduit temps 
                y = min.to_s
                d = y[y.length-1].to_i
                d == 0 || d == 2 || d == 4 || d == 6 || d == 8 ? f = k * (min-1) : f = k * (min-1) + k 
               
                g = g + quotient * f
        
                max == b ? b = reste : a = reste
                break if reste == 0
            end
             g 
        end


        def alaN
a = 265335483829436438764567
b = 627325637472
g = 0
            i = 0
            loop do
                i = i + 1
                max = [a,b].max
                min = [a,b].min
                reste = max % min
                quotient = max / min
                g = g + quotient * (min * (min-1) / 2)
                max == b ? b = reste : a = reste
                break if i == 1
              
            end
             ((a-1) * (b-1) + a.gcd(b) - 1) / 2 + g
        end




        def alaNo
a = 265335483829436438764567
b = 627325637472
          g = 0
          i = 0
          loop do
              i = i + 1
              max = [a,b].max
              min = [a,b].min
              reste = max % min
              quotient = max / min
              kk = (min * (min-1) / 2)
              g = g + quotient * kk
              max == b ? b = reste : a = reste
              break if i == 1
          end
           ((a-1) * (b-1) + a.gcd(b) - 1) / 2 + g
      end


      def ali
a = 265335483829436438764567
b = 627325637472
g = 0
      
      i = 0
      loop do
          i = i + 1
          reste = [a,b].max % [a,b].min
          quotient = [a,b].max / [a,b].min
          kk = ([a,b].min * ([a,b].min-1) / 2)
          g = g + quotient * kk
          [a,b].max == b ? b = reste : a = reste
          break if i == 1  
      end
       ((a-1) * (b-1) + a.gcd(b) - 1) / 2 + g
  end


  def alaNouu
a = 265335483829436438764567
b = 627325637472
   g = 0
  i = 0
  loop do
      i = i + 1
      max = [a,b].max
      min = [a,b].min
      reste = max % min
      quotient = max / min

      min % 2 == 0 ? f = (min / 2) * (min-1) : f = (min / 2) * (min-1) + (min / 2) 

      g = g + quotient * f

      max == b ? b = reste : a = reste
      break if i == 1
  end
   ((a-1) * (b-1) + a.gcd(b) - 1) / 2 + g
end


def alaNoj
a = 265335483829436438764567
b = 627325637472
           g = 0

      max = [a,b].max
      min = [a,b].min
      reste = max % min
      quotient = max / min
      kk = (min * (min-1) / 2)
      g = g + quotient * kk
      max == b ? b = reste : a = reste

  ((a-1) * (b-1) + a.gcd(b) - 1) / 2 + g
end


def ok
a = 265335483829436438764567
b = 627325637472
           g = 0

      max = [a,b].max
      min = [a,b].min
      reste = max % min
      quotient = max / min
      kk = (min * (min-1) / 2)
  
      g = g + quotient * kk
      max == b ? b = reste : a = reste

      c = (a-1) % 2
      cc = (a-1) / 2
      d = (b-1) % 2
      dd = (b-1) / 2
      
      e = cc * (dd+1) + (cc+1) * dd if c == 1 && d == 1
      e = cc * dd + (cc+1) * dd if c == 1 && d == 0
      e = cc * dd + cc * (dd+1) if c == 0 && d == 1
      e = cc * dd * 2 if c == 0 && d == 0
      z = a.gcd(b)/2
     g + e + z
end


def ok2
a = 265335483829436438764567
b = 627325637472
g = 0

      max = [a,b].max
      min = [a,b].min
      reste = max % min
      quotient = max / min

      v = min%2
      kk = min/2 * (min-1) if v == 0
      kk = (min-1) /2 * min if v == 1
      # on peut améliorer ici kk 
      g = g + quotient * kk
      max == b ? b = reste : a = reste

      c = (a-1) % 2
      cc = (a-1) / 2
      d = (b-1) % 2
      dd = (b-1) / 2
      
      e = cc * (dd+1) + (cc+1) * dd if c == 1 && d == 1
      e = cc * dd + (cc+1) * dd if c == 1 && d == 0
      e = cc * dd + cc * (dd+1) if c == 0 && d == 1
      e = cc * dd * 2 if c == 0 && d == 0
      z = a.gcd(b)/2
     g + e + z
end



def alazz2222
a = 265335483829436438764567
b = 627325637472
           g = 0
    zz = 0
    loop do
        max = [a,b].max
        min = [a,b].min
        reste = max % min
        quotient = max / min
        v = min%2
        kk = min/2 * (min-1) if v == 0
        kk = (min-1) /2 * min if v == 1
        g = g + quotient * kk
        max == b ? b = reste : a = reste
        break if reste == 0
        zz += 1
    end
     g 
end


def alaNoj2
a = 265335483829436438764567
b = 627325637472
           g = 0

      max = [a,b].max
      min = [a,b].min
      reste = max % min
      quotient = max / min
      v = min%2
      kk = min/2 * (min-1) if v == 0
      kk = min/2 * (min) if v == 1
      g = g + quotient * kk
      max == b ? b = reste : a = reste

 ((a-1) * (b-1) + a.gcd(b) - 1) / 2 + g
end


def alaNoj3
a = 265335483829436438764567
b = 627325637472
           g = 0

      max = [a,b].max
      min = [a,b].min
      reste = max % min
      quotient = max / min
      v = min%2
      qq = min/2
      kk = qq* (min-1) if v == 0
      kk = qq* (min) if v == 1
      g = g + quotient * kk
      max == b ? b = reste : a = reste

  ((a-1) * (b-1) + a.gcd(b) - 1) / 2 + g
end




puts Benchmark.measure {  vs        } 
puts Benchmark.measure {  vs2       } 
puts Benchmark.measure {  ala       }
puts Benchmark.measure {  alazz     }
puts Benchmark.measure {  ala2      }
puts Benchmark.measure {  ala3      }
puts Benchmark.measure {  ala4      }
puts Benchmark.measure {  ala5      }
puts Benchmark.measure {  ala6      }
puts Benchmark.measure {  alaN      }
puts Benchmark.measure {  alaNo     } 
puts Benchmark.measure {  ali       }
puts Benchmark.measure {  alaNouu   }
puts Benchmark.measure {  alaNoj    }
puts Benchmark.measure {  ok        }
puts Benchmark.measure {  ok2       }
puts Benchmark.measure {  alazz2222 }
puts Benchmark.measure {  alaNoj2   }
puts Benchmark.measure {  alaNoj3   }