<?php

require 'xlsxwriter.php';

$workbook = workbook_new('test.xlsx');
$worksheet = workbook_add_worksheet($workbook, null);

$titleFormat = workbook_add_format($workbook);
format_set_bold($titleFormat);
format_set_font_name($titleFormat, 'Arial');
format_set_font_size($titleFormat, 15);
format_set_indent($titleFormat, 1);

worksheet_merge_range($worksheet, 0, 0, 0, 4, 'Бюджет доходов и расходов', $titleFormat);

$headerFormat = workbook_add_format($workbook);
format_set_bold($headerFormat);
format_set_font_name($headerFormat, 'Arial');
format_set_bg_color($headerFormat, 0xF5F5F5);

$bodyFormat = workbook_add_format($workbook);
format_set_font_name($bodyFormat, 'Arial');
format_set_font_size($bodyFormat, 12);
worksheet_set_column($worksheet, 0, 4, LXW_DEF_COL_WIDTH, $bodyFormat);

worksheet_write_string($worksheet, 1, 0, '1', $headerFormat);
worksheet_write_string($worksheet, 2, 0, '1.1', $headerFormat);
worksheet_write_string($worksheet, 1, 1, 'Заголовок', null);
worksheet_write_string($worksheet, 2, 1, 'Подзаголовок', null);
worksheet_write_number($worksheet, 3, 0, 123456.78, null);

$options = new lxw_row_col_options();
$options->level = 1;
$options->hidden = true;
$options->collapsed = true;
worksheet_set_row_opt($worksheet, 2, LXW_DEF_ROW_HEIGHT, null, $options);

workbook_close($workbook);
