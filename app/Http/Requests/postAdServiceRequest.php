<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class postAdServiceRequest extends FormRequest
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
        $rules = [

            'scat_pk_no'                => 'required|integer|min:1|max:1000',
            'title'                     => 'required|string|min:|max:150',
            'price'                     => 'nullable|min:0|max:11',
            'price_negotiable'          => 'nullable|integer|max:1',
            'product_type'              => 'nullable|integer|min:1',
            'location'                  => 'required',
            'area'                      => 'required',
            'description'               => 'required|string|min:50|max:4000',
            'mobile1'                   => 'required|string|min:11|max:11',
            'address'                   => 'required|string|min:5|max:150',
            'image'                     => 'required',


        ];

        return $rules;
    }

    public function messages()
    {
        return [
            'scat_pk_no.required'       => 'This field is required',
            'title.required'            => 'This field is required',
            'title.min'                 => 'Minimum 2 characters required',
            'title.max'                 => 'Maximum 150 characters',
            'description.required'          => 'This field is required',
            'description.min'               => 'Minimum 50 characters required',
            'description.max'               => 'Maximum 4000 characters',
            'mobile1.required'               => 'This field is required',
            'mobile1.min'                    => 'Minimum 11 digit',
            'mobile1.max'                    => 'Maximum 11 digit',
            'address.required'              => 'This field is required',
            'address.min'                   => 'Minimum 5 characters required',
            'address.max'                   => 'Maximum 150 characters',
            'custom_model.max'              => 'Maximum 60 characters',
            'image.required'                => 'Minimum one image must need',



        ];
    }
}
