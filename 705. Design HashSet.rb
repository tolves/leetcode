class MyHashSet
    # begin
    #     Initialize your data structure here.
    # end
    def initialize()
        @container  = Array.new
    end
    
    
    # =begin
    #     :type key: Integer
    #     :rtype: Void
    # =end
    def add(key)
        @container[key] = true
    end
    
    
    # =begin
    #     :type key: Integer
    #     :rtype: Void
    # =end
    def remove(key)
        if @container[key]
            @container[key] = nil
        end
    end
    
    
    # =begin
    #     Returns true if this set contains the specified element
    #     :type key: Integer
    #     :rtype: Boolean
    #     @containerp[key] == nil or true
    #     !@containerp[key] == false or true
    #     !!@containerp[key] = reverse !@containerp[key]
    # =end
    def contains(key)
        !!@container[key]
    end
end
    
    # Your MyHashSet object will be instantiated and called as such:
    obj = MyHashSet.new()
    puts obj.add(3)
    # puts obj.remove(3)
    puts param_3 = obj.contains(3)