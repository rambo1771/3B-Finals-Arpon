<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Student;

use App\Models\Subject;

class StudentSeeder extends Seeder
{
    public function run()
    {
        Student::factory(10)->create()->each(function ($student) {
            $student->subjects()->saveMany(Subject::factory(5)->make());
        });
    }
}
