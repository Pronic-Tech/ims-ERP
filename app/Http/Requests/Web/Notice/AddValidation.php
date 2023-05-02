<?php

 /*
 * Mr. Umesh Kumar Yadav
 * Business With Technology Pvt. Ltd.
 * Rajbiraj-7 (Province 2, Saptari), Nepal
 * +977-9868156047
 * freelancerumeshnepal@gmail.com
 * https://codecanyon.net/item/unlimited-edu-firm-school-college-information-management-system/21850988
 */
namespace App\Http\Requests\Web\Notice;

use Illuminate\Foundation\Http\FormRequest;

class AddValidation extends FormRequest
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
            'title' => 'required | unique:notices,title',
            'publish_date' => 'required',
            'main_image' => 'mimes:jpeg,jpg,bmp,png,gif',
            'download_file' => 'mimes:txt,pdf,doc,docx,ppt,pptx,xls,xlsx,jpeg,bmp,png'
        ];
    }

    public function messages()
    {
        return [

        ];
    }
}