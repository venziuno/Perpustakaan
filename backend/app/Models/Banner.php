<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    use HasFactory;
    protected $table = 'banners';
    public $incrementing = false;
    protected $guarded = [];
    protected $fillable = [
        'id',
        'title',
        'description',
        'file',
        'status'
    ];
}
