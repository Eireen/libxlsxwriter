/** Default column width in Excel */
#define LXW_DEF_COL_WIDTH 8.43

/** Default row height in Excel */
#define LXW_DEF_ROW_HEIGHT 15.0

enum lxw_gridlines {
    /** Hide screen and print gridlines. */
    LXW_HIDE_ALL_GRIDLINES = 0,

    /** Show screen gridlines. */
    LXW_SHOW_SCREEN_GRIDLINES,

    /** Show print gridlines. */
    LXW_SHOW_PRINT_GRIDLINES,

    /** Show screen and print gridlines. */
    LXW_SHOW_ALL_GRIDLINES
};

lxw_error worksheet_write_number(lxw_worksheet *worksheet,
                                 unsigned int row,
                                 unsigned short col, double number,
                                 lxw_format *format);

lxw_error worksheet_write_string(lxw_worksheet *worksheet,
                                 unsigned int row,
                                 unsigned short col, const char *string,
                                 lxw_format *format);

lxw_error worksheet_write_formula(lxw_worksheet *worksheet,
                                  unsigned int row,
                                  unsigned short col, const char *formula,
                                  lxw_format *format);

lxw_error worksheet_write_array_formula(lxw_worksheet *worksheet,
                                        unsigned int first_row,
                                        unsigned short first_col,
                                        unsigned int last_row,
                                        unsigned short last_col,
                                        const char *formula,
                                        lxw_format *format);

lxw_error worksheet_write_array_formula_num(lxw_worksheet *worksheet,
                                            unsigned int first_row,
                                            unsigned short first_col,
                                            unsigned int last_row,
                                            unsigned short last_col,
                                            const char *formula,
                                            lxw_format *format,
                                            double result);

lxw_error worksheet_write_datetime(lxw_worksheet *worksheet,
                                   unsigned int row,
                                   unsigned short col, lxw_datetime *datetime,
                                   lxw_format *format);

lxw_error worksheet_write_url_opt(lxw_worksheet *worksheet,
                                  unsigned int row_num,
                                  unsigned short col_num, const char *url,
                                  lxw_format *format, const char *string,
                                  const char *tooltip);

lxw_error worksheet_write_url(lxw_worksheet *worksheet,
                              unsigned int row,
                              unsigned short col, const char *url,
                              lxw_format *format);

lxw_error worksheet_write_boolean(lxw_worksheet *worksheet,
                                  unsigned int row, unsigned short col,
                                  int value, lxw_format *format);

lxw_error worksheet_write_blank(lxw_worksheet *worksheet,
                                unsigned int row, unsigned short col,
                                lxw_format *format);

lxw_error worksheet_write_formula_num(lxw_worksheet *worksheet,
                                      unsigned int row,
                                      unsigned short col,
                                      const char *formula,
                                      lxw_format *format, double result);

lxw_error worksheet_set_row(lxw_worksheet *worksheet,
                            unsigned int row, double height, lxw_format *format);

lxw_error worksheet_set_row_opt(lxw_worksheet *worksheet,
                                unsigned int row,
                                double height,
                                lxw_format *format,
                                lxw_row_col_options *options);

lxw_error worksheet_set_column(lxw_worksheet *worksheet,
                               unsigned short first_col,
                               unsigned short last_col,
                               double width, lxw_format *format);

lxw_error worksheet_set_column_opt(lxw_worksheet *worksheet,
                                   unsigned short first_col,
                                   unsigned short last_col,
                                   double width,
                                   lxw_format *format,
                                   lxw_row_col_options *options);

lxw_error worksheet_insert_image(lxw_worksheet *worksheet,
                                 unsigned int row, unsigned short col,
                                 const char *filename);

lxw_error worksheet_insert_image_opt(lxw_worksheet *worksheet,
                                     unsigned int row, unsigned short col,
                                     const char *filename,
                                     lxw_image_options *options);

lxw_error worksheet_insert_chart(lxw_worksheet *worksheet,
                                 unsigned int row, unsigned short col,
                                 lxw_chart *chart);

lxw_error worksheet_insert_chart_opt(lxw_worksheet *worksheet,
                                     unsigned int row, unsigned short col,
                                     lxw_chart *chart,
                                     lxw_image_options *user_options);

lxw_error worksheet_merge_range(lxw_worksheet *worksheet, unsigned int first_row,
                                unsigned short first_col, unsigned int last_row,
                                unsigned short last_col, const char *string,
                                lxw_format *format);

lxw_error worksheet_autofilter(lxw_worksheet *worksheet, unsigned int first_row,
                               unsigned short first_col, unsigned int last_row,
                               unsigned short last_col);

lxw_error worksheet_data_validation_cell(lxw_worksheet *worksheet,
                                         unsigned int row, unsigned short col,
                                         lxw_data_validation *validation);

lxw_error worksheet_data_validation_range(lxw_worksheet *worksheet,
                                          unsigned int first_row,
                                          unsigned short first_col,
                                          unsigned int last_row,
                                          unsigned short last_col,
                                          lxw_data_validation *validation);

void worksheet_activate(lxw_worksheet *worksheet);

void worksheet_select(lxw_worksheet *worksheet);

void worksheet_hide(lxw_worksheet *worksheet);

void worksheet_set_first_sheet(lxw_worksheet *worksheet);

void worksheet_freeze_panes(lxw_worksheet *worksheet,
                            unsigned int row, unsigned short col);

void worksheet_split_panes(lxw_worksheet *worksheet,
                           double vertical, double horizontal);

void worksheet_freeze_panes_opt(lxw_worksheet *worksheet,
                                unsigned int first_row, unsigned short first_col,
                                unsigned int top_row, unsigned short left_col,
                                unsigned char type);

void worksheet_split_panes_opt(lxw_worksheet *worksheet,
                               double vertical, double horizontal,
                               unsigned int top_row, unsigned short left_col);

void worksheet_set_selection(lxw_worksheet *worksheet,
                             unsigned int first_row, unsigned short first_col,
                             unsigned int last_row, unsigned short last_col);

void worksheet_set_landscape(lxw_worksheet *worksheet);

void worksheet_set_portrait(lxw_worksheet *worksheet);

void worksheet_set_page_view(lxw_worksheet *worksheet);

void worksheet_set_paper(lxw_worksheet *worksheet, unsigned char paper_type);

void worksheet_set_margins(lxw_worksheet *worksheet, double left,
                           double right, double top, double bottom);

lxw_error worksheet_set_header(lxw_worksheet *worksheet, const char *string);

lxw_error worksheet_set_footer(lxw_worksheet *worksheet, const char *string);

lxw_error worksheet_set_header_opt(lxw_worksheet *worksheet,
                                   const char *string,
                                   lxw_header_footer_options *options);

lxw_error worksheet_set_footer_opt(lxw_worksheet *worksheet,
                                   const char *string,
                                   lxw_header_footer_options *options);

lxw_error worksheet_set_h_pagebreaks(lxw_worksheet *worksheet,
                                     unsigned int breaks[]);

lxw_error worksheet_set_v_pagebreaks(lxw_worksheet *worksheet,
                                     unsigned short breaks[]);

void worksheet_print_across(lxw_worksheet *worksheet);

void worksheet_set_zoom(lxw_worksheet *worksheet, uint16_t scale);

void worksheet_gridlines(lxw_worksheet *worksheet, unsigned char option);

void worksheet_center_horizontally(lxw_worksheet *worksheet);

void worksheet_center_vertically(lxw_worksheet *worksheet);

void worksheet_print_row_col_headers(lxw_worksheet *worksheet);

lxw_error worksheet_repeat_rows(lxw_worksheet *worksheet, unsigned int first_row,
                                unsigned int last_row);

lxw_error worksheet_repeat_columns(lxw_worksheet *worksheet,
                                   unsigned short first_col, unsigned short last_col);

lxw_error worksheet_print_area(lxw_worksheet *worksheet, unsigned int first_row,
                               unsigned short first_col, unsigned int last_row,
                               unsigned short last_col);

void worksheet_fit_to_pages(lxw_worksheet *worksheet, uint16_t width,
                            uint16_t height);

void worksheet_set_start_page(lxw_worksheet *worksheet, uint16_t start_page);

void worksheet_set_print_scale(lxw_worksheet *worksheet, uint16_t scale);

void worksheet_right_to_left(lxw_worksheet *worksheet);

void worksheet_hide_zero(lxw_worksheet *worksheet);

void worksheet_set_tab_color(lxw_worksheet *worksheet, unsigned int color);

void worksheet_protect(lxw_worksheet *worksheet, const char *password,
                       lxw_protection *options);

void worksheet_set_default_row(lxw_worksheet *worksheet, double height,
                               unsigned char hide_unused_rows);

lxw_worksheet *lxw_worksheet_new(lxw_worksheet_init_data *init_data);
void lxw_worksheet_free(lxw_worksheet *worksheet);
void lxw_worksheet_assemble_xml_file(lxw_worksheet *worksheet);
void lxw_worksheet_write_single_row(lxw_worksheet *worksheet);

void lxw_worksheet_prepare_image(lxw_worksheet *worksheet,
                                 uint16_t image_ref_id, uint16_t drawing_id,
                                 lxw_image_options *image_data);

void lxw_worksheet_prepare_chart(lxw_worksheet *worksheet,
                                 uint16_t chart_ref_id, uint16_t drawing_id,
                                 lxw_image_options *image_data);

lxw_row *lxw_worksheet_find_row(lxw_worksheet *worksheet, unsigned int row_num);
lxw_cell *lxw_worksheet_find_cell(lxw_row *row, unsigned short col_num);
