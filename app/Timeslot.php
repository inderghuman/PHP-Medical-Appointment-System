<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Timeslot extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'start_time', 'end_time', 'room_id', 'user_id'
    ];

    /**
     * Get the room that belongs to this room.
     */
    public function room()
    {
        return $this->belongsTo('App\Room')
            ->select(['id','title']);
    }
}
