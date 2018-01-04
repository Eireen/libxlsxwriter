typedef struct lxw_workbook_options {
    unsigned char constant_memory;
    char *tmpdir;
} lxw_workbook_options;

typedef struct lxw_doc_properties {
    char *title;
    char *subject;
    char *author;
    char *manager;
    char *company;
    char *category;
    char *keywords;
    char *comments;
    char *status;
    char *hyperlink_base;
    time_t created;
} lxw_doc_properties;

extern lxw_workbook *workbook_new(const char *filename);

extern lxw_workbook *workbook_new_opt(const char *filename,
                               lxw_workbook_options *options);

extern lxw_worksheet *workbook_add_worksheet(lxw_workbook *workbook,
                                      const char *sheetname);

lxw_format *workbook_add_format(lxw_workbook *workbook);

lxw_chart *workbook_add_chart(lxw_workbook *workbook, unsigned char chart_type);

lxw_error workbook_close(lxw_workbook *workbook);

lxw_error workbook_set_properties(lxw_workbook *workbook,
                                  lxw_doc_properties *properties);

lxw_error workbook_set_custom_property_string(lxw_workbook *workbook,
                                              const char *name,
                                              const char *value);

lxw_error workbook_set_custom_property_number(lxw_workbook *workbook,
                                              const char *name, double value);

lxw_error workbook_set_custom_property_boolean(lxw_workbook *workbook,
                                               const char *name,
                                               unsigned char value);

lxw_error workbook_set_custom_property_datetime(lxw_workbook *workbook,
                                                const char *name,
                                                lxw_datetime *datetime);

lxw_error workbook_define_name(lxw_workbook *workbook, const char *name,
                               const char *formula);

lxw_worksheet *workbook_get_worksheet_by_name(lxw_workbook *workbook,
                                              const char *name);

lxw_error workbook_validate_worksheet_name(lxw_workbook *workbook,
                                           const char *sheetname);
