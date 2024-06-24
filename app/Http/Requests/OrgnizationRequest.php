<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class OrgnizationRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|unique:organizations',
            'logo' => 'required',
            'country' => 'required',
            'admin_name' => 'required',
            'admin_email' => 'required|unique:users,email',
            'admin_password' => 'required|min:6',
            //'admin_avtar' => 'required',
           // 'roles' => 'required',

        ];
    }
}
