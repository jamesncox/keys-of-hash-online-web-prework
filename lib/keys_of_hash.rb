# class Hash
#   def keys_of(*args)
#     map {|key, value| args.include?(value) ? key : nil }.compact
#   end
# end

# class Hash
#   def keys_of(*arguments)
#     array = []
#     self.each do |key, value|
#       arguments.each do |i|
#         if i == value
#         array.push(key)
#         end
#       end 
#     end
#     return array
#   end
# end 

class Hash
  def keys_of(*arguments)
    arr = []
    arguments.each do |arg|
      self.each do |key, val|
        if arg == val
          arr.push(key)
        end
      end
    end
    arr
  end
end
