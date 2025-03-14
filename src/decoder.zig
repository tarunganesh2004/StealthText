// Decodes hidden messages
const std = @import("std");

pub fn decode(text: []const u8) ![]u8 {
    var allocator = std.heap.page_allocator;
    var result = try allocator.alloc(u8, text.len / 2);
    var j: usize = 0;
    var i: usize = 0;
    while (i < text.len) : (i += 2) {
        result[j] = text[i];
        j += 1;
    }
    return result;
}
