%module xlsxwriter
%{
#include "../../../include/xlsxwriter.h"
%}

%include "interface/third_party/queue.i"
%include "interface/common.i"
%include "interface/workbook.i"
%include "interface/worksheet.i"
%include "interface/format.i"
