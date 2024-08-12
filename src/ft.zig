const abi = @import("abi");
const ui = @import("ui/ui.zig");

/// A wrapper structure for dealing with the abi libraries
pub const Library = struct {
    /// The registered Library for the application
    pub var current: ?Library = null;

    /// The Internal abi library handle
    library: abi.FT_Library,

    /// Initialize the abi library
    /// Call this before creating a Library Structure
    /// Call `Library.current.destroy()` to free the resources
    pub fn init() !Self {
        var library: abi.FT_Library = undefined;
        if (abi.FT_Init_FreeType(@ptrCast(&library)) != 0) {
            return Err.FAILED_TO_INIT_FREETYPE;
        }
        current = .{
            .library = library,
        };

        return current.?;
    }

    /// Load a abi font from a `path` at index
    pub fn newFace(self: Self, path: []const u8, face_index: i64) !Face {
        var face: abi.FT_Face = undefined;
        if (abi.FT_New_Face(self.library, @ptrCast(path), face_index, @ptrCast(&face)) != 0) {
            return Err.FAILED_TO_CREATE_NEW_FACE;
        }
        return face;
    }

    /// Free the abi library resources
    pub fn destroy(self: Self) !void {
        if (abi.FT_Done_FreeType(self.library) != 0) {
            return Err.FAILED_TO_DESTROY_FREETYPE;
        }
    }

    /// Get the index of the glyph code in the freetpye font
    pub fn getGlyphIndex(face: Face, code: u64) u32 {
        return @intCast(abi.FT_Get_Char_Index(face, code));
    }

    const Self = @This();
    const Err = error{
        FAILED_TO_INIT_FREETYPE,
        FAILED_TO_DESTROY_FREETYPE,
        FAILED_TO_CREATE_NEW_FACE,
    };
};

pub const Face = abi.FT_Face;
