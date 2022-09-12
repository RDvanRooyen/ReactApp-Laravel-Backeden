<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WorkAs;

class WorkAsController extends Controller
{
    public function SelectAllWorkAs(){
    	$result = WorkAs::pluck('workas_title')->toArray();
    	return $result;

    } // end method

    public function AddWorkAs(){
    	return view('backend.workas.add_workas');
    } // end method

    public function StoreWorkAs(Request $request){

        $request->validate([
            'workas_title' => 'required',
             
        ],[
            'workas_title.required' => 'Input occupation title',

        ]);        

        WorkAs::insert([
            'workas_title' => $request->workas_title,
        ]);

         $notification = array(
            'message' => 'Occupation Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.workas.content')->with($notification);

    } // end method

    public function EditWorkAs($id){

        $workascontent = WorkAs::findOrFail($id);
        return view('backend.workas.edit_workas',compact('workascontent'));

    } // end method 

    public function UpdateWorkAs(Request $request){

        $home_id = $request->id;

        WorkAs::findOrFail($home_id)->update([
            'workas_title' => $request->workas_title,             
        ]);

         $notification = array(
            'message' => 'Occupation Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.workas.content')->with($notification);


    } // end method

    public function DeleteWorkAs($id){

        WorkAs::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Occupation Delected Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    }// end method
}
