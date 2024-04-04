#ifndef MAP_H
#define MAP_H

#include <ncurses.h>

// Initializes the start screen of the game
void startScreen();

// Displays the game instructions in the specified window
void displayInstructions(WINDOW *win);

// The main loop of the game, handling game logic and user input
void game_loop(WINDOW *game_win, WINDOW *message_win);

// Displays the current level of the game in the specified window
void display_window(WINDOW *win, int level);

void display_level(WINDOW *win, int mode);

#endif // MAP_H

