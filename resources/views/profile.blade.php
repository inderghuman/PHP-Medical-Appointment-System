@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">{{ Auth::user()->fname }}'s Profile</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
    
                    <!-- Link for the admin -->
                    @role('admin')
                        <span class="label label-danger">Admin</span>
                    @endrole

                    <!-- Link for doctors -->
                    @role('doctor')
                        <span class="label label-success">Doctor</span>
                    @endrole

                    <!-- Link for patients -->
                    @role('admin|doctor')
                    @else
                        <span class="label label-primary">Patient</span>
                    @endrole
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
