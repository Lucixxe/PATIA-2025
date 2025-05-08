import npuzzle as np
import argparse

def main():
    parser = argparse.ArgumentParser(description='Generate an n-puzzle and save it to a file.')
    parser.add_argument('-s', '--size', type=int, help='Size of the puzzle (e.g., 3 for a 3x3 puzzle)')
    parser.add_argument('-ml', '--maxlength', type=int, help='Maximum length of the move sequence')
    parser.add_argument('-n', '--number', type=int, help='Number of puzzles to generate per length')
    parser.add_argument('dirname', type=str, help='Directory to save the puzzles')
    parser.add_argument('-v', '--verbose', action='store_true', help='Verbose output')

    args = parser.parse_args()
    goal_state = np.create_goal(args.size)
    if args.verbose:
        print('Goal state:\n')
        print(np.to_string(goal_state))

    for length in range(1, args.maxlength + 1):
        for i in range(args.number):
            new_state = goal_state
            for _ in range(length):
                new_state = np.shuffle(new_state)
            if args.verbose:
                print('Puzzle:\n')
                print(np.to_string(new_state))
            filename = "{}/npuzzle_{}x{}_len{}_{}.txt".format(args.dirname, args.size, args.size, length, i)
            print("Saving puzzle to", filename)
            np.save_puzzle(new_state, filename)

if __name__ == '__main__':
    main()