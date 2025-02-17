<?php

return [
    'ffmpeg' => [
        'binaries' => 'C:\ffmpeg\bin\ffmpeg.exe',

        'threads' => 12,   // set to false to disable the default 'threads' filter
    ],

    'ffprobe' => [
        'binaries' => 'C:\ffmpeg\bin\ffprobe.exe',
    ],

    'timeout' => 3600,

    'enable_logging' => true,

    'set_command_and_error_output_on_exception' => false,

    'temporary_files_root' => env('FFMPEG_TEMPORARY_FILES_ROOT', sys_get_temp_dir()),
];
