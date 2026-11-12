#include "raylib.h"

int main(void) {
    const int screenWidth = 800;
    const int screenHeight = 600;

    InitWindow(screenWidth, screenHeight, "pong-ML");

    SetTargetFPS(60);

    while(!WindowShouldClose()) {
        // Update
        // TODO: Add things

        //Draw
        BeginDrawing();
            ClearBackground(RAYWHITE);
            DrawText("[Insert PONG here]", 190, 200, 20, LIGHTGRAY);
        EndDrawing();
    }

    CloseWindow();

    return 0;
}
