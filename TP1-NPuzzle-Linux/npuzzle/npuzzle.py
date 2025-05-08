from typing import List, Tuple
from random import choice
import math

UP = 'up'
DOWN = 'down'
LEFT = 'left'
RIGHT = 'right'

Move = str  
Solution = List[str]
State = List[int]

def to_string(current_state: State) -> str:
    dimension = int(math.sqrt(len(current_state)))
    t = ''
    for i in range(dimension):
        for j in range(dimension):
            t += str(current_state[i * dimension + j]) + '\t'
        t += '\n'
    return t

def shuffle(state: State) -> State:
    moves = [UP, DOWN, LEFT, RIGHT]
    dimension = int(math.sqrt(len(state)))
    while True:
        random_move = choice(moves)
        new_state = make_move(state, random_move, dimension)
        if new_state is not None:
            return new_state

def create_goal(dimension: int) -> State:
    return list(range(dimension * dimension))

def is_goal(puzzle: State) -> bool:
    return puzzle == create_goal(int(math.sqrt(len(puzzle))))

def get_children(puzzle: State, moves: List[str], dimension: int) -> List[Tuple[State, str]]:
    children = []
    for move in moves:
        new_state = make_move(puzzle, move, dimension)
        if new_state is not None:
            children.append((new_state, move))
    return children

def play_puzzle(puzzle: State, moves: Solution) -> State:
    dimension = int(math.sqrt(len(puzzle)))
    for move in moves:
        puzzle = make_move(puzzle, move, dimension)
    return puzzle

def is_plan(puzzle: State, moves: Solution) -> bool:
    return play_puzzle(puzzle, moves) is not None

def is_solution(puzzle: State, moves: Solution) -> bool:
    return is_goal(play_puzzle(puzzle, moves))

def make_move(current_state: State, direction: str, dimension: int) -> State or None:
    if not current_state:
        return None

    s = current_state.copy()
    size = dimension * dimension
    blank_index = s.index(0)

    if direction == UP:
        swap_index = blank_index - dimension
        if swap_index >= 0:
            s[blank_index], s[swap_index] = s[swap_index], s[blank_index]
            return s
    elif direction == DOWN:
        swap_index = blank_index + dimension
        if swap_index < size:
            s[blank_index], s[swap_index] = s[swap_index], s[blank_index]
            return s
    elif direction == LEFT:
        if (blank_index % dimension) - 1 >= 0:
            swap_index = blank_index - 1
            s[blank_index], s[swap_index] = s[swap_index], s[blank_index]
            return s
    elif direction == RIGHT:
        if (blank_index % dimension) + 1 < dimension:
            swap_index = blank_index + 1
            s[blank_index], s[swap_index] = s[swap_index], s[blank_index]
            return s
    return None

def save_puzzle(puzzle: State, filename: str) -> None:
    with open(filename, 'w') as file:
        file.write(' '.join(str(tile) for tile in puzzle))

def load_puzzle(filename: str) -> State:
    with open(filename, 'r') as file:
        return [int(tile) for tile in file.read().split()]