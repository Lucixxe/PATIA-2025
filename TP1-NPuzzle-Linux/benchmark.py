import os
import time
import subprocess
import csv

PUZZLE_DIR = "puzzles"
RESULTS_FILE = "results/benchmark.csv"
ALGORITHMS = ["bfs", "dfs", "astar"]
SIZE = 3
MAX_LENGTH = 10
NB_PUZZLES_PER_LENGTH = 3

def generate_puzzles():
    print("Génération de puzzles...")
    if not os.path.exists(PUZZLE_DIR):
        os.makedirs(PUZZLE_DIR)
    subprocess.run([
        "python3", "npuzzle/generate_npuzzle.py",
        "-s", str(SIZE),
        "-ml", str(MAX_LENGTH),
        "-n", str(NB_PUZZLES_PER_LENGTH),
        PUZZLE_DIR
    ])

def run_solver(filepath, algo):
    try:
        start = time.time()
        subprocess.run([
            "python3", "npuzzle/solve_npuzzle.py",
            filepath, "-a", algo
        ], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        return round(time.time() - start, 5)
    except Exception as e:
        print("Erreur avec {} - {}: {}".format(filepath, algo, e))
        return -1

def benchmark():
    print("Lancement du benchmark...")
    if not os.path.exists("results"):
        os.makedirs("results")
    with open(RESULTS_FILE, "w", newline="") as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["length", "puzzle_id", "algo", "time"])
        for length in range(1, MAX_LENGTH + 1):
            for i in range(NB_PUZZLES_PER_LENGTH):
                puzzle_file = "{}/npuzzle_{}x{}_len{}_{}.txt".format(PUZZLE_DIR, SIZE, SIZE, length, i)
                if not os.path.exists(puzzle_file):
                    continue
                for algo in ALGORITHMS:
                    t = run_solver(puzzle_file, algo)
                    print("{} [{}] = {} sec".format(puzzle_file, algo, t))
                    writer.writerow([length, i, algo, t])

if __name__ == "__main__":
    generate_puzzles()
    benchmark()
    print("Résultats enregistrés dans {}".format(RESULTS_FILE))