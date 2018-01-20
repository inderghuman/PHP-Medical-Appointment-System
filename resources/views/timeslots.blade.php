@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Timeslot Manager</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
    
                    <!-- Show existing rooms -->
                    <h4>Existing Timeslots</h4>
                    

                    @foreach($branches as $branch)
                    <br>
                    <div class="alert alert-info">
                      <strong>Branch Name: {{$branch->name}}</strong>
                    </div>
                        
                            @if (count($branch->rooms) > 0)
                                @foreach($branch->rooms as $room)
                                    <center><i>{{$room->title}}</i></center>
                                    @if (count($room->timeslots) > 0)
                                        <table class="table">
                                            <thead>
                                              <tr>
                                                <th>Start Time</th>
                                                <th>End Time</th>
                                                <th></th>
                                              </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($room->timeslots as $timeslot)
                                                    <tr>
                                                        <td>{{$timeslot->start_time}}</td>
                                                        <td>{{$timeslot->end_time}}</td>
                                                        <td><a class="btn btn-danger" href="{{ route('deleteTimeslot', $timeslot->id) }}">Delete</a></td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    @else 
                                        <br>There are no timeslots for this room.<br>
                                    @endif
                                @endforeach
                            @else
                                There are no rooms for this branch.
                            @endif

                    @endforeach
                    <!-- Add a new rooms -->
                    <hr>
                    <h4>Add a Timeslot</h4>
                     <form class="form-horizontal" method="POST" action="{{ route('addTimeslot') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('start_time') ? ' has-error' : '' }}">
                            <label for="start_time" class="col-md-4 control-label">Start Time</label>

                            <div class="col-md-6">
                                <input id="start_time" type="text" class="form-control" name="start_time" value="{{ old('start_time') }}" required autofocus>

                                @if ($errors->has('start_time'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('start_time') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('end_time') ? ' has-error' : '' }}">
                            <label for="end_time" class="col-md-4 control-label">End Time</label>

                            <div class="col-md-6">
                                <input id="end_time" type="text" class="form-control" name="end_time" value="{{ old('end_time') }}" required autofocus>

                                @if ($errors->has('end_time'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('end_time') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('room_id') ? ' has-error' : '' }}">
                            <label for="room_id" class="col-md-4 control-label">Room</label>

                            <div class="col-md-6">
                                <div class="form-group">
                                  <select class="form-control" id="room_id" name="room_id">
                                    @foreach($branches as $branch)
                                        <optgroup label="{{$branch->name}}">
                                            @foreach($branch->rooms as $room)
                                              <option value="{{$room->id}}">{{$room->title}}</option>
                                            @endforeach
                                        </optgroup>
                                    @endforeach
                                  </select>
                                </div> 

                                @if ($errors->has('room_id'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('room_id') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>



                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Add Timeslot
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
