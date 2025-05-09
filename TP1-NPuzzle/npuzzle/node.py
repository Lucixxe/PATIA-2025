from typing import List
from npuzzle import State, Move

class Node():
    def __init__(self, state : State, move : Move, cost = 0, heuristic = 0, parent = None) -> None:
        self.state = state
        self.move = move
        self.cost = cost
        self.heuristic = heuristic
        self.parent = parent
        
    def __eq__(self, n) -> bool:
        return self.state == n.state
    
    def get_state(self) -> State:
        return self.state
    
    def get_path(self) -> List[Move]:
        path = []
        current = self
        while current.parent is not None:
            path.append(current.move)
            current = current.parent
        return path[::-1]  # Reverse the path to start from root
