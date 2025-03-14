//  Encodes hidden messages
const std = @import("std");

pub fn encode(text: []const u8) ![]u8 {
    var allocator = std.heap.page_allocator;
    var result = try allocator.alloc(u8, text.len * 2);
    var j: usize = 0;
    for (text) |c| {
        result[j] = c;
        j += 1;
        result[j] = if (c % 2 == 0) 0xE2 else 0xE3; // Insert invisible zero-width char
        j += 1;
    }
    return result;
}