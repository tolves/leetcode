def getIntersectionNode(headA, headB)
    return nil if headA.nil? || headB.nil?
    node_a = headA
    node_b = headB
    
    while(node_a != node_b)
      node_a.nil? ? node_a = headB : node_a = node_a.next  
      node_b.nil? ? node_b = headA : node_b = node_b.next 
    end
    
    node_a
    
end