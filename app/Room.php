<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title', 'room_no', 'branch_id',
    ];

    /**
     * Get the branch that belongs to this room.
     */
    public function branch()
    {
        return $this->belongsTo('App\Branch')
            ->select(['id','name']);
    }
}
