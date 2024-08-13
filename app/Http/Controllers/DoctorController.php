<?php

namespace App\Http\Controllers;

use App\Models\Doctor;
use Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class DoctorController extends Controller
{
    function index()
    {
        $doctors = Doctor::paginate(12);
        return view('front.doctors.index', ['doctors' => $doctors]);
    }
    function show($id)
    {
        $doctor = Doctor::find($id);
        // dd($doctor);
        return view('front.doctors.doctor', ['doctor' => $doctor]);
    }
    function ShowByMajor($id)
    {
        $doctors = Doctor::where('major_id', '=', $id)->paginate(5);
        return view('front.doctors.index', ['doctors' => $doctors]);
    }
    function create(Request $request)
    {
        $request->validate([
            'name' => 'required|min:2|max:20|string',
            'email' => 'required|email|unique:doctors,email',
            'password' => 'required|regex:/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/',
            'major_id' => 'exists:doctors,major_id|required',
            'bio' => 'required|min:5|max:255'
        ]);

        // Hash the password
        $hashedPassword = \Illuminate\Support\Facades\Hash::make($request->password);

        // Create a new Doctor instance and set attributes
        $doctor = new Doctor([
            'name' => $request->name,
            'email' => $request->email,
            'password' => $hashedPassword,
            'major_id' => $request->major_id,
            'bio' => $request->bio,
        ]);

        // Save the new Doctor instance to the database
        $doctor->save();

        return redirect(route('createdoctor'))->with('suc', 'New Doctor Added');
    }

    function destroy(Request $request)
    {
        $request->validate(['id' => 'required|exists:doctors,id'], ['id.exists' => 'There is no doctor with that id']);
        $id = request('id');
        Doctor::find($id)->delete();
        return redirect(route('removedoctor'))->with('suc', 'doctor Deleted');
    }
    function edit(Request $request)
    {

        // dd($request->all());
        $request->validate([
            'id' => 'required|exists:doctors,id',
            'name' => 'required|min:2|max:20|string',
            'email' => [
                'required',
                'email',
                Rule::unique('doctors', 'email')->ignore($request->id, 'id'), ],
            'major_id' => 'exists:doctors,major_id|required',
            'bio' => 'required|min:5|max:255',
        ], ['id.exists' => 'There is no doctor with that id']);
        $data = $request->except(['_token', '_method']);
        $data['id'] = $request->id;
        Doctor::where('id', $request->id)->update($data);
        return redirect(route('updatedoctor'))->with(['suc' => 'Doctor Data Updated']);
    }
}
