from npuzzle import (
    Solution,
    State,
    Move,
    UP,
    DOWN,
    LEFT,
    RIGHT,
    get_children,
    is_goal,
    is_solution,
    load_puzzle,
    to_string)
from node import Node
from typing import List
import argparse
import math
import time

BFS = 'bfs'
DFS = 'dfs'
ASTAR = 'astar'

def solve_dfs(open_list: List[Node]) -> Solution:
    visited = set()
    dimension = int(math.sqrt(len(open_list[0].get_state())))
    moves = [UP, DOWN, LEFT, RIGHT]

    while open_list:
        node = open_list.pop()
        state_tuple = tuple(node.get_state())
        if state_tuple in visited:
            continue
        visited.add(state_tuple)

        if is_goal(node.get_state()):
            return node.get_path()

        children = get_children(node.get_state(), moves, dimension)
        for child_state, move in children:
            child_tuple = tuple(child_state)
            if child_tuple not in visited:
                child_node = Node(state=child_state, move=move, parent=node, cost=node.cost + 1)
                open_list.append(child_node)

    return []

def solve_bfs(open_list: List[Node]) -> Solution:
    visited = set()
    dimension = int(math.sqrt(len(open_list[0].get_state())))
    moves = [UP, DOWN, LEFT, RIGHT]

    while open_list:
        node = open_list.pop(0)
        state_tuple = tuple(node.get_state())
        if state_tuple in visited:
            continue
        visited.add(state_tuple)

        if is_goal(node.get_state()):
            return node.get_path()

        children = get_children(node.get_state(), moves, dimension)
        for child_state, move in children:
            child_tuple = tuple(child_state)
            if child_tuple not in visited:
                child_node = Node(state=child_state, move=move, parent=node, cost=node.cost + 1)
                open_list.append(child_node)

    return []

def heuristic(node):
    state = node.get_state()
    dimension = int(math.sqrt(len(state)))
    distance = 0
    for i, tile in enumerate(state):
        if tile == 0:
            continue
        goal_x, goal_y = tile % dimension, tile // dimension
        current_x, current_y = i % dimension, i // dimension
        distance += abs(goal_x - current_x) + abs(goal_y - current_y)
    return distance

def solve_astar(open_list: List[Node], close_list: List[Node]) -> Solution:
    visited = set()
    dimension = int(math.sqrt(len(open_list[0].get_state())))
    moves = [UP, DOWN, LEFT, RIGHT]

    while open_list:
        open_list.sort(key=lambda n: n.cost + n.heuristic)
        node = open_list.pop(0)
        state_tuple = tuple(node.get_state())
        if state_tuple in visited:
            continue
        visited.add(state_tuple)

        if is_goal(node.get_state()):
            return node.get_path()

        children = get_children(node.get_state(), moves, dimension)
        for child_state, move in children:
            child_tuple = tuple(child_state)
            if child_tuple not in visited:
                h = heuristic(Node(child_state, move))
                child_node = Node(state=child_state, move=move, parent=node, cost=node.cost + 1, heuristic=h)
                open_list.append(child_node)

    return []

def is_solvable(puzzle: State) -> bool:
    inv_count = 0
    puzzle_ = [tile for tile in puzzle if tile != 0]
    for i in range(len(puzzle_) - 1):
        for j in range(i + 1, len(puzzle_)):
            if puzzle_[i] > puzzle_[j]:
                inv_count += 1
    return inv_count % 2 == 0

def main():
    parser = argparse.ArgumentParser(description='Load an n-puzzle and solve it.')
    parser.add_argument('filename', type=str, help='File name of the puzzle')
    parser.add_argument('-a', '--algo', type=str, choices=['bfs', 'dfs', 'astar'], required=True, help='Algorithm to solve the puzzle')
    parser.add_argument('-v', '--verbose', action='store_true', help='Increase output verbosity')

    args = parser.parse_args()
    puzzle = load_puzzle(args.filename)

    if not is_solvable(puzzle):
        print("Ce puzzle est insolvable.")
        return

    if args.verbose:
        print('Puzzle:\n')
        print(to_string(puzzle))

    if not is_goal(puzzle):
        root = Node(state=puzzle, move=None, parent=None)
        open_list = [root]

        if args.algo == BFS:
            print('BFS\n')
            start_time = time.time()
            solution = solve_bfs(open_list)
            duration = time.time() - start_time
        elif args.algo == DFS:
            print('DFS\n')
            start_time = time.time()
            solution = solve_dfs(open_list)
            duration = time.time() - start_time
        elif args.algo == ASTAR:
            print('A*\n')
            root.heuristic = heuristic(root)
            start_time = time.time()
            solution = solve_astar([root], [])
            duration = time.time() - start_time
        else:
            print('Algorithme non reconnu.')
            return

        if solution:
            print('Solution:', solution)
            print('Valid solution:', is_solution(puzzle, solution))
            print('Duration:', duration)
        else:
            print('No solution')
    else:
        print('Puzzle is already solved')

if __name__ == '__main__':
    main()
