@extends('adminlte::page')
@section('title','Update Doctors')
@section('content')
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Background color for the entire page */
        }

        .container {
    display: flex;
    align-items: center; /* Center items vertically */
    justify-content: center; /* Center items horizontally */
    margin: 20px auto;
    max-width: 800px;
}

.custom-form {
    background-color: #c2c7d0;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    width: 300px;
}
        .form-title {
            font-family: 'Arial', sans-serif; /* Specify a font family */
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #ffffff; /* Text color for the title */
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            font-size: 14px;
            font-weight: bold;
            color: #ffffff; /* Text color for labels */
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ffffff; /* Border color for input fields */
            border-radius: 5px; /* Rounded corners for input fields */
        }

        .form-select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ffffff; /* Border color for select field */
            border-radius: 5px; /* Rounded corners for select field */
        }

        .btn-submit {
            width: 100%;
            border-radius: 20px; /* Rounded button edges */
            background-color: #c2c7d0; /* Button color */
            opacity: 0.7; /* Transparent button (70% opacity) */
            color: #ffffff; /* Text color for buttons */
            text-align: center;
            text-decoration: none; /* Remove default underline for anchor tags */
            display: inline-block;
            padding: 10px; /* Adjust padding for buttons */
        }


        .custom-form {
            background-color: #c2c7d0;
            margin: 0 auto;
            padding: 20px;
            float: right;

        background-color: #c2c7d0;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        width: 48%; /* Set width for the form */


        }
        </style>
</head>
<body>

</div>
<x-card card="Here You can Update Doctors Data" />
</div>
    <div class="container mt-5">
    <div class="row justify-content-center">
        @if(session('suc'))
        <div class="alert alert-success">
            {{ session('suc') }}
            @endif
        </div>
        <div class="col-md-6">

        </div>
        <form class="custom-form" action="{{ route('editdoctor') }}" method="POST">
            @csrf
            @method('put')
            <div class="form-title">Edit Doctors Data</div>
            <div class="form-group">
                <label for="id" class="form-label">ID</label>
                @error('id')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
                <input type="text" id="id" name="id" class="form-control" required placeholder="enter the doctor id you want to update">
                </div>
            <div class="form-group">
                <label for="name" class="form-label">Name</label>
                @error('name')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
                <input type="text" id="name" name="name" class="form-control" required placeholder="enter the  new name ">
            </div>
                <div class="form-group">
                    <label for="email" class="form-label">Email</label>
                    @error('email')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                    <input type="email" id="email" name="email" class="form-control" required placeholder="enter the  new email">
                </div>
                <div class="form-group">
                    <label for="major_id" class="form-label">Major ID</label>
                    @error('major_id')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                    <input type="text" id="major_id" name="major_id" class="form-control" required placeholder="enter the  new Major ID ">
                </div>
                <div class="form-group">
                    <label for="bio" class="form-label">bio</label>
                    @error('bio')
                    <div class="alert alert-danger">{{ $message }}</div>bio
                    @enderror
                    <input type="text" id="bio" name="bio" class="form-control" required placeholder="enter the new bio">
                </div>
                <button type="submit" class="btn btn-submit">Update</button>
            </form>
        </div>
</body>
</html>
@endsection
