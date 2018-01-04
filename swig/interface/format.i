enum lxw_format_alignments {
    /** No alignment. Cell will use Excel's default for the data type */
    LXW_ALIGN_NONE = 0,

    /** Left horizontal alignment */
    LXW_ALIGN_LEFT,

    /** Center horizontal alignment */
    LXW_ALIGN_CENTER,

    /** Right horizontal alignment */
    LXW_ALIGN_RIGHT,

    /** Cell fill horizontal alignment */
    LXW_ALIGN_FILL,

    /** Justify horizontal alignment */
    LXW_ALIGN_JUSTIFY,

    /** Center Across horizontal alignment */
    LXW_ALIGN_CENTER_ACROSS,

    /** Left horizontal alignment */
    LXW_ALIGN_DISTRIBUTED,

    /** Top vertical alignment */
    LXW_ALIGN_VERTICAL_TOP,

    /** Bottom vertical alignment */
    LXW_ALIGN_VERTICAL_BOTTOM,

    /** Center vertical alignment */
    LXW_ALIGN_VERTICAL_CENTER,

    /** Justify vertical alignment */
    LXW_ALIGN_VERTICAL_JUSTIFY,

    /** Distributed vertical alignment */
    LXW_ALIGN_VERTICAL_DISTRIBUTED
};

enum lxw_format_borders {
    /** No border */
    LXW_BORDER_NONE,

    /** Thin border style */
    LXW_BORDER_THIN,

    /** Medium border style */
    LXW_BORDER_MEDIUM,

    /** Dashed border style */
    LXW_BORDER_DASHED,

    /** Dotted border style */
    LXW_BORDER_DOTTED,

    /** Thick border style */
    LXW_BORDER_THICK,

    /** Double border style */
    LXW_BORDER_DOUBLE,

    /** Hair border style */
    LXW_BORDER_HAIR,

    /** Medium dashed border style */
    LXW_BORDER_MEDIUM_DASHED,

    /** Dash-dot border style */
    LXW_BORDER_DASH_DOT,

    /** Medium dash-dot border style */
    LXW_BORDER_MEDIUM_DASH_DOT,

    /** Dash-dot-dot border style */
    LXW_BORDER_DASH_DOT_DOT,

    /** Medium dash-dot-dot border style */
    LXW_BORDER_MEDIUM_DASH_DOT_DOT,

    /** Slant dash-dot border style */
    LXW_BORDER_SLANT_DASH_DOT
};

enum lxw_defined_colors {
    /** Black */
    LXW_COLOR_BLACK = 0x1000000,

    /** Blue */
    LXW_COLOR_BLUE = 0x0000FF,

    /** Brown */
    LXW_COLOR_BROWN = 0x800000,

    /** Cyan */
    LXW_COLOR_CYAN = 0x00FFFF,

    /** Gray */
    LXW_COLOR_GRAY = 0x808080,

    /** Green */
    LXW_COLOR_GREEN = 0x008000,

    /** Lime */
    LXW_COLOR_LIME = 0x00FF00,

    /** Magenta */
    LXW_COLOR_MAGENTA = 0xFF00FF,

    /** Navy */
    LXW_COLOR_NAVY = 0x000080,

    /** Orange */
    LXW_COLOR_ORANGE = 0xFF6600,

    /** Pink */
    LXW_COLOR_PINK = 0xFF00FF,

    /** Purple */
    LXW_COLOR_PURPLE = 0x800080,

    /** Red */
    LXW_COLOR_RED = 0xFF0000,

    /** Silver */
    LXW_COLOR_SILVER = 0xC0C0C0,

    /** White */
    LXW_COLOR_WHITE = 0xFFFFFF,

    /** Yellow */
    LXW_COLOR_YELLOW = 0xFFFF00
};

typedef struct lxw_format {

    FILE *file;

    lxw_hash_table *xf_format_indices;
    uint16_t *num_xf_formats;

    int32_t xf_index;
    int32_t dxf_index;

    char num_format[LXW_FORMAT_FIELD_LEN];
    char font_name[LXW_FORMAT_FIELD_LEN];
    char font_scheme[LXW_FORMAT_FIELD_LEN];
    uint16_t num_format_index;
    uint16_t font_index;
    unsigned char has_font;
    unsigned char has_dxf_font;
    double font_size;
    unsigned char bold;
    unsigned char italic;
    unsigned int font_color;
    unsigned char underline;
    unsigned char font_strikeout;
    unsigned char font_outline;
    unsigned char font_shadow;
    unsigned char font_script;
    unsigned char font_family;
    unsigned char font_charset;
    unsigned char font_condense;
    unsigned char font_extend;
    unsigned char theme;
    unsigned char hyperlink;

    unsigned char hidden;
    unsigned char locked;

    unsigned char text_h_align;
    unsigned char text_wrap;
    unsigned char text_v_align;
    unsigned char text_justlast;
    int16_t rotation;

    unsigned int fg_color;
    unsigned int bg_color;
    unsigned char pattern;
    unsigned char has_fill;
    unsigned char has_dxf_fill;
    int32_t fill_index;
    int32_t fill_count;

    int32_t border_index;
    unsigned char has_border;
    unsigned char has_dxf_border;
    int32_t border_count;

    unsigned char bottom;
    unsigned char diag_border;
    unsigned char diag_type;
    unsigned char left;
    unsigned char right;
    unsigned char top;
    unsigned int bottom_color;
    unsigned int diag_color;
    unsigned int left_color;
    unsigned int right_color;
    unsigned int top_color;

    unsigned char indent;
    unsigned char shrink;
    unsigned char merge_range;
    unsigned char reading_order;
    unsigned char just_distrib;
    unsigned char color_indexed;
    unsigned char font_only;

    STAILQ_ENTRY (lxw_format) list_pointers;
} lxw_format;

void format_set_font_name(lxw_format *format, const char *font_name);

void format_set_font_size(lxw_format *format, double size);

void format_set_font_color(lxw_format *format, unsigned int color);

void format_set_bold(lxw_format *format);

void format_set_italic(lxw_format *format);

void format_set_underline(lxw_format *format, unsigned char style);

void format_set_font_strikeout(lxw_format *format);

void format_set_font_script(lxw_format *format, unsigned char style);

void format_set_num_format(lxw_format *format, const char *num_format);

void format_set_num_format_index(lxw_format *format, unsigned char index);

void format_set_unlocked(lxw_format *format);

void format_set_hidden(lxw_format *format);

void format_set_align(lxw_format *format, unsigned char alignment);

void format_set_text_wrap(lxw_format *format);

void format_set_rotation(lxw_format *format, int16_t angle);

void format_set_indent(lxw_format *format, unsigned char level);

void format_set_shrink(lxw_format *format);

void format_set_pattern(lxw_format *format, unsigned char index);

void format_set_bg_color(lxw_format *format, unsigned int color);

void format_set_fg_color(lxw_format *format, unsigned int color);

void format_set_border(lxw_format *format, unsigned char style);

void format_set_bottom(lxw_format *format, unsigned char style);

void format_set_top(lxw_format *format, unsigned char style);

void format_set_left(lxw_format *format, unsigned char style);

void format_set_right(lxw_format *format, unsigned char style);

void format_set_border_color(lxw_format *format, unsigned int color);

void format_set_bottom_color(lxw_format *format, unsigned int color);

void format_set_top_color(lxw_format *format, unsigned int color);

void format_set_left_color(lxw_format *format, unsigned int color);

void format_set_right_color(lxw_format *format, unsigned int color);

void format_set_diag_type(lxw_format *format, unsigned char value);
void format_set_diag_color(lxw_format *format, unsigned int color);
void format_set_diag_border(lxw_format *format, unsigned char value);
void format_set_font_outline(lxw_format *format);
void format_set_font_shadow(lxw_format *format);
void format_set_font_family(lxw_format *format, unsigned char value);
void format_set_font_charset(lxw_format *format, unsigned char value);
void format_set_font_scheme(lxw_format *format, const char *font_scheme);
void format_set_font_condense(lxw_format *format);
void format_set_font_extend(lxw_format *format);
void format_set_reading_order(lxw_format *format, unsigned char value);
void format_set_theme(lxw_format *format, unsigned char value);
