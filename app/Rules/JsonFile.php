<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class JsonFile implements Rule
{
    public function passes($attribute, $value)
    {
        // Check if the content is valid JSON
        json_decode($value);

        return json_last_error() === JSON_ERROR_NONE;
    }

    public function message()
    {
        return 'The :attribute must be a valid JSON file.';
    }
}
