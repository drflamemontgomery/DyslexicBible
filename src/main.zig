const std = @import("std");
const zigui = @import("zig-ui");
const ui = zigui.ui;

const Size = zigui.ui.Size;
const App = zigui.App(AppState);
const AppState = struct {
    text: ui.Text,
};

pub fn main() !void {
    try App.init();
    defer App.deinit();

    var app = try App.create(.{
        .title = "Dyslexic Bible",

        .init = init,
        .main_loop = mainLoop,
    });
    defer app.destroy();

    try app.run();
}

fn init(app: *App) anyerror!void {
    app.state.text = try ui.Text.new(App.arena, "Hello World!", .{});
    app.state.text.color = ui.Color.fromHSV(50, 0.79, 0.8);
    _ = try app.state.text.getComponent(App.arena, &app.window.ctx.component);
}


fn mainLoop(app: *App) anyerror!void {
    const app_size:Size(f32) = app.window.ctx.component.size.?;
    if(app.state.text.component) |*text_component| {
        text_component.pos.x += 1;
        if(text_component.pos.x > app_size.width) {
            const size: Size(f32) = text_component.calculated_size;
            text_component.pos.x = - size.width;
        }
        text_component.invalidate();
    }
}
