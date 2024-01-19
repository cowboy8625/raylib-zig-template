const std = @import("std");
const rl = @cImport(@cInclude("raylib.h"));

pub fn main() !void {
    const screen_width = 800;
    const screen_height = 600;
    rl.InitWindow(screen_width, screen_height, "raylib zig template");
    defer rl.CloseWindow();

    rl.SetTargetFPS(60);

    while (!rl.WindowShouldClose()) {
        rl.BeginDrawing();
        rl.ClearBackground(rl.RAYWHITE);
        const text = "Hello, World";
        const text_dim = rl.MeasureTextEx(rl.GetFontDefault(), text, 20, 1);
        // zig fmt: off
        rl.DrawTextEx(
            rl.GetFontDefault(),
            "Hello, World",
            .{
                .x = screen_width / 2 - text_dim.x / 2,
                .y = screen_height / 2 - text_dim.y / 2
            },
            20,
            2,
            rl.DARKGRAY
        );
        defer rl.EndDrawing();
    }
}
