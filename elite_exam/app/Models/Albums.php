<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Albums extends Model
{
    use HasFactory;

    protected $fillable = [
        'artist_code',
        'name',
        'sales',
        'year',
    ];
    public $timestamps = false;
}
