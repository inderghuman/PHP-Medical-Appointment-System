@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    Hi, please select from the available options below:<br><br>
    
                    <!-- Link for the admin -->
                    @role('admin')
                        <a href="/branches" type="button" class="btn btn-primary">Manage Branches</a>
                        <a href="/rooms" type="button" class="btn btn-primary">Manage Rooms</a>
                        <a href="/timeslots" type="button" class="btn btn-primary">Manage Timeslots</a>
                    @endrole

                    <!-- Link for doctors -->
                    @role('doctor')
                        <a href="/rooms" type="button" class="btn btn-primary">Attach/Detach Timeslots</a>
                        
                    @endrole

                    <!-- Link for patients -->
                    @role('admin|doctor')
                    @else
                        <a href="/timeslots" type="button" class="btn btn-primary">Profile</a>
                    @endrole
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
