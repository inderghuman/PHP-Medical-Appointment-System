<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Traits\HasRoles;
use DB;

class TimeSlotController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['role:admin,doctor'], ['except' => ['index']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $branches = \App\Branch::with([
	        'rooms' => function($q) {$q->with('timeslots');}
 		])->get();
        //dd($branches);
        //$rooms = DB::table('rooms')->select('title', 'id')->get();
        //$branches = DB::table('branches')->select('name', 'id')->get();
        return view('timeslots', compact('branches'));
    }

    /**
     * Show the form for creating a new room.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created room in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       $this->validate($request,
           [
               'start_time' => 'required',
               'end_time' => 'required',
               'room_id' =>'required'
           ]);
       \App\Timeslot::create($request->all());
       return redirect()->route('timeslots');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       \App\Timeslot::find($id)->delete();
       return redirect()->route('timeslots');
    }
}
