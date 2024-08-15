const abi = @import("c_abi.zig");

pub const FT_Face = abi.FT_Face;
pub const FT_Vector = abi.FT_Vector;
pub const FT_Kerning_Mode = abi.FT_Kerning_Mode;
pub const FT_Glyph = abi.FT_Glyph;
pub const FT_BBox = abi.FT_BBox;

pub const FT_Library = abi.FT_Library;
pub const FT_Init_FreeType = abi.FT_Init_FreeType;
pub const FT_Done_FreeType = abi.FT_Done_FreeType;
pub const FT_Done_Face = abi.FT_Done_Face;
pub const FT_New_Face = abi.FT_New_Face;
pub const FT_Done_Glyph = abi.FT_Done_Glyph;
pub const FT_Get_Char_Index = abi.FT_Get_Char_Index;
pub const FT_Get_Kerning = abi.FT_Get_Kerning;
pub const FT_Get_Glyph = abi.FT_Get_Glyph;
pub const FT_Glyph_Get_CBox = abi.FT_Glyph_Get_CBox;

pub const loadGlyph = abi.FT_Load_Glyph;

pub const FT_LOAD_DEFAULT = abi.FT_LOAD_DEFAULT;
pub const FT_GLYPH_BBOX_UNSCALED = abi.FT_GLYPH_BBOX_UNSCALED;

pub const FcValue = abi.FcValue;
pub const FcResult = abi.FcResult;

pub const FcInit = abi.FcInit;
pub const FcFini = abi.FcFini;
pub const FcConfigGetFontDirs = abi.FcConfigGetFontDirs;
pub const FcConfigGetFonts = abi.FcConfigGetFonts;
pub const FcStrListNext = abi.FcStrListNext;
pub const FcStrListDone = abi.FcStrListDone;
pub const FcFontSetDestroy = abi.FcFontSetDestroy;
pub const FcFontSetPrint = abi.FcFontSetPrint;
pub const FcPatternPrint = abi.FcPatternPrint;
pub const FcPatternGet = abi.FcPatternGet;
pub const FcNameUnparse = abi.FcNameUnparse;
pub const FcPatternCreate = abi.FcPatternCreate;
pub const FcPatternDestroy = abi.FcPatternDestroy;
pub const FcConfigSubstitute = abi.FcConfigSubstitute;
pub const FcDefaultSubstitute = abi.FcDefaultSubstitute;
pub const FcFontMatch = abi.FcFontMatch;

pub const FcSetSystem = abi.FcSetSystem;
pub const FcTypeString = abi.FcTypeString;
