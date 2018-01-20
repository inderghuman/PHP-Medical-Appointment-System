@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Room Manager</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
    
                    <!-- Show existing rooms -->
                    <h4>Existing Rooms</h4>

                      <table class="table">
                        <thead>
                          <tr>
                            <th>Room Title</th>
                            <th>Room Number</th>
                            <th>Branch</th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                        @foreach($rooms as $room)
                          <tr>
                            <td>{{$room->title}}</td>
                            <td>{{$room->room_no}}</td>
                            <td>{{$room->branch->name}}</td>
                            <td><a class="btn btn-danger" href="{{ route('deleteRoom', $room->id) }}">Delete</a></td>
                          </tr>
                        @endforeach
                        </tbody>
                      </table>
                    <!-- Add a new rooms -->
                    <hr>
                    <h4>Add a Room</h4>
                     <form class="form-horizontal" method="POST" action="{{ route('addRoom') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Title</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="title" value="{{ old('title') }}" required autofocus>

                                @if ($errors->has('title'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('title') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('room_no') ? ' has-error' : '' }}">
                            <label for="room_no" class="col-md-4 control-label">Room Number</label>

                            <div class="col-md-6">
                                <input id="room_no" type="text" class="form-control" name="room_no" value="{{ old('room_no') }}" required autofocus>

                                @if ($errors->has('room_no'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('room_no') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('branch_id') ? ' has-error' : '' }}">
                            <label for="branch_id" class="col-md-4 control-label">Branch Location</label>

                            <div class="col-md-6">
                                <div class="form-group">
                                  <select class="form-control" id="branch_id" name="branch_id">
                                    @foreach($branches as $branch)
                                      <option value="{{$branch->id}}">{{$branch->name}}</option>
                                    @endforeach
                                  </select>
                                </div> 

                                @if ($errors->has('branch_id'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('branch_id') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Add Room
                                </button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
