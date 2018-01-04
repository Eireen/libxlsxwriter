typedef enum lxw_error {

    /** No error. */
    LXW_NO_ERROR = 0,

    /** Memory error, failed to malloc() required memory. */
    LXW_ERROR_MEMORY_MALLOC_FAILED,

    /** Error creating output xlsx file. Usually a permissions error. */
    LXW_ERROR_CREATING_XLSX_FILE,

    /** Error encountered when creating a tmpfile during file assembly. */
    LXW_ERROR_CREATING_TMPFILE,

    /** Zlib error with a file operation while creating xlsx file. */
    LXW_ERROR_ZIP_FILE_OPERATION,

    /** Zlib error when adding sub file to xlsx file. */
    LXW_ERROR_ZIP_FILE_ADD,

    /** Zlib error when closing xlsx file. */
    LXW_ERROR_ZIP_CLOSE,

    /** NULL function parameter ignored. */
    LXW_ERROR_NULL_PARAMETER_IGNORED,

    /** Function parameter validation error. */
    LXW_ERROR_PARAMETER_VALIDATION,

    /** Worksheet name exceeds Excel's limit of 31 characters. */
    LXW_ERROR_SHEETNAME_LENGTH_EXCEEDED,

    /** Worksheet name contains invalid Excel character: '[]:*?/\\' */
    LXW_ERROR_INVALID_SHEETNAME_CHARACTER,

    /** Worksheet name is already in use. */
    LXW_ERROR_SHEETNAME_ALREADY_USED,

    /** Parameter exceeds Excel's limit of 32 characters. */
    LXW_ERROR_32_STRING_LENGTH_EXCEEDED,

    /** Parameter exceeds Excel's limit of 128 characters. */
    LXW_ERROR_128_STRING_LENGTH_EXCEEDED,

    /** Parameter exceeds Excel's limit of 255 characters. */
    LXW_ERROR_255_STRING_LENGTH_EXCEEDED,

    /** String exceeds Excel's limit of 32,767 characters. */
    LXW_ERROR_MAX_STRING_LENGTH_EXCEEDED,

    /** Error finding internal string index. */
    LXW_ERROR_SHARED_STRING_INDEX_NOT_FOUND,

    /** Worksheet row or column index out of range. */
    LXW_ERROR_WORKSHEET_INDEX_OUT_OF_RANGE,

    /** Maximum number of worksheet URLs (65530) exceeded. */
    LXW_ERROR_WORKSHEET_MAX_NUMBER_URLS_EXCEEDED,

    /** Couldn't read image dimensions or DPI. */
    LXW_ERROR_IMAGE_DIMENSIONS,

    LXW_MAX_ERRNO
} lxw_error;

typedef struct lxw_row_col_options {
    unsigned char hidden;
    unsigned char level;
    unsigned char collapsed;
} lxw_row_col_options;

typedef struct lxw_datetime {
    int year;
    int month;
    int day;
    int hour;
    int min;
    double sec;
} lxw_datetime;

enum lxw_custom_property_types {
    LXW_CUSTOM_NONE,
    LXW_CUSTOM_STRING,
    LXW_CUSTOM_DOUBLE,
    LXW_CUSTOM_INTEGER,
    LXW_CUSTOM_BOOLEAN,
    LXW_CUSTOM_DATETIME
};
