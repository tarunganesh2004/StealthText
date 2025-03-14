// Entry point
const std = @import("std");
const encoder = @import("src/encoder.zig");
const decoder = @import("src/decoder.zig");

pub fn main() !void {
    var args = std.process.args();
    _ = args.next(); // Skip program name

    if (args.next()) |cmd| {
        if (std.mem.eql(u8, cmd, "encode")) {
            if (args.next()) |message| {
                const encoded = try encoder.encode(message);
                std.debug.print("Encoded Message: {s}\n", .{encoded});
            } else {
                std.debug.print("Usage: stealthtext encode <message>\n", .{});
            }
        } else if (std.mem.eql(u8, cmd, "decode")) {
            if (args.next()) |text| {
                const decoded = try decoder.decode(text);
                std.debug.print("Decoded Message: {s}\n", .{decoded});
            } else {
                std.debug.print("Usage: stealthtext decode <text>\n", .{});
            }
        } else {
            std.debug.print("Unknown command. Use 'encode' or 'decode'.\n", .{});
        }
    } else {
        std.debug.print("Usage: stealthtext <encode|decode> <text>\n", .{});
    }
}