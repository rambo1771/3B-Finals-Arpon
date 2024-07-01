<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    use HasFactory;

    protected $fillable = [
        'student_id', 'subject_code', 'name', 'description', 'instructor', 'schedule', 'grades', 'average_grade', 'remarks', 'date_taken'
    ];

    protected $casts = [
        'grades' => 'array',
        'date_taken' => 'date',
    ];

    public function student()
    {
        return $this->belongsTo(Student::class);
    }
}
