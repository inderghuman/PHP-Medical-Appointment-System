<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Branch extends Model
{
	protected $table = 'branches';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'address', 'city', 'state', 'zip_code', 'phone_no'
    ];

    /**
     * Get the rooms created for this branch.
     */
    public function rooms()
    {
        return $this->hasMany('App\Room');
    }
}
