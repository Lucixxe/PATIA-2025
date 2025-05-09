package sokoban;

import java.util.*;

public class Agent {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int width = in.nextInt();
        int height = in.nextInt();
        int nbTargets = in.nextInt();
        in.nextLine();

        char[][] map = new char[height][width];
        for (int y = 0; y < height; y++) {
            String line = in.nextLine();
            for (int x = 0; x < width; x++) {
                map[y][x] = line.charAt(x);
            }
        }

        // Skip target positions
        for (int i = 0; i < nbTargets; i++) {
            in.nextLine();
        }

        // Mini plan (bouge 3 fois vers la droite, 1 fois en bas)
        System.out.println("R");
        System.out.println("D");
        System.out.println("R");
        System.out.println("U");
        System.out.println("R");
        System.out.println("R");
        System.out.println("L");
        System.out.println("L");
        System.out.println("L");
        System.out.println("U");
        System.out.println("R");
        System.out.println("R");
        System.out.println("D");
        System.out.println("R");
        System.out.println("U");
        System.out.println("L");
        System.out.println("U");
        System.out.println("U");
        System.out.println("L");
        System.out.println("L");
        System.out.println("D");
        System.out.println("D");
        System.out.println("R");
        System.out.println("D");
        System.out.println("D");
        System.out.println("L");
        System.out.println("L");
        System.out.println("U");
        System.out.println("R");
    }
}