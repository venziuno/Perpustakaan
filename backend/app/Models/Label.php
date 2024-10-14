<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Label extends Model
{
    use HasFactory;
    protected $table = 'labels';
    public $incrementing = false;
    protected $guarded = [];
    protected $fillable = ['id','name'];

    public function book()
    {
        return $this->hasMany(Book::class, 'labels_id');
    }
}
