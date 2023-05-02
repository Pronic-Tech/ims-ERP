<?php

 /*
 * Mr. Umesh Kumar Yadav
 * Business With Technology Pvt. Ltd.
 * Rajbiraj-7 (Province 2, Saptari), Nepal
 * +977-9868156047
 * freelancerumeshnepal@gmail.com
 * https://codecanyon.net/item/unlimited-edu-firm-school-college-information-management-system/21850988
 */
namespace App\Http\Requests\Hostel\FoodItem;

use Illuminate\Foundation\Http\FormRequest;

class EditValidation extends FormRequest
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
             'title'            => 'required | max:50 | unique:food_items,title,'.$this->request->get('id'),
             'category'         => 'required',
             'price'             => 'required',
         ];
    }

    public function messages()
    {
        return [
            'title.required' => 'Please, Add Item.',
            'title.unique' => 'This Item Already Register',
        ];
    }
}
