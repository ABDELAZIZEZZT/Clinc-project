<?php

namespace App\Http\Controllers;

use App\Models\Doctor;
use App\Models\major;
use Database\Factories\MajorFactory;
use Illuminate\Http\Request;

class MajorController extends Controller
{
    function index(){
        $majors = major::paginate(5);
        return view('front.majors',['majors'=>$majors]);
    }
    function create(Request $request)
    {
        $request->validate([
            'title' => 'required|min:2|max:20|string',
        ]);
        $major=Major::create($request->except('_token'));
        return redirect(route('new_major'))->with('suc','New Major Create with ID '.$major->id);
    }

    function destroy(Request $request)
    {
        $request->validate(['id' => 'required|exists:majors,id'], ['id.exists' => 'There is no major with that id']);
        $id = request('id');
        major::find($id)->delete();
        return redirect(route('removemajor'))->with('suc','major Deleted');
    }
    //create the edit function
    function edit(Request $request)
    {
        $request->validate([
            'id' => 'required|exists:majors,id',
            'title' => 'required|min:2|max:20|string',
        ], ['id.exists' => 'There is no major with that id']);

        $major = Major::findOrFail($request->id);
        $major->title = $request->title;
        $major->save();

        return redirect(route('updatemajor'))->with('suc', 'Major Updated');
    }


}
