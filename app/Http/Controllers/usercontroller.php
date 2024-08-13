<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class usercontroller extends Controller
{
    function index()
    {
        $users=User::paginate(2);
        return view('users',['users'=>$users]);
    }
    function create(Request $request)
    {
        $request->validate([
        'name'=>'required|min:2|max:20|string',
        'email'=>'required|email|unique:users,email',
        'phone'=>'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10|max:15',
        'password'=>'required|regex:/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/',
        'role'=>'required|string'
    ]);
        $data=$request->except('_token');
        User::create($data);

            return redirect(route('createuser'))->with('suc','New User Created');


    }
    function remove()
    {
        return view('dashboard.actions.deleteuser');
    }
    function destroy(Request $request)
    {
        $request->validate(['id'=> 'required|exists:users,id'],['id.exists'=>'There is no user with that id'] ); // custom the laravel error message
        $id=request('id');
        User::find($id)->delete();
        return redirect(route('removeuser'))->with('suc','User Deleted');
    }
    function viewlogin()
    {

            return view('front.login');

    }
    function register()
    {
        return view('front.register');
    }
    function edit(Request $request){
        $request->validate([
            'id' => 'required|exists:doctors,id',
            'name'=>'required|min:2|max:20|string',
            'email' => [
                'required',
                'email',
                Rule::unique('doctors', 'email')->ignore($request->id, 'id'), ],
            'phone'=>'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10|max:15'
        ], ['id.exists' => 'There is no user with that id']);

        $data=$request->except('_token','_method');
        User::where('id', $request->id)->update($data);
        return redirect(route('updateuser'))->with('suc','User Data Updated');


    }

}
