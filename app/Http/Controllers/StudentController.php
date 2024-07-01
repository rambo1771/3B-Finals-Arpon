<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function index(Request $request)
    {
        $query = Student::query();

        if ($request->filled('search')) {
            $query->where('firstname', 'like', "%{$request->search}%")
                  ->orWhere('lastname', 'like', "%{$request->search}%");
        }

        if ($request->filled('sort')) {
            $query->orderBy($request->sort, $request->direction ?? 'asc');
        }

        $students = $query->paginate($request->limit ?? 15);

        return response()->json([
            'metadata' => [
                'count' => $students->total(),
                'search' => $request->search,
                'limit' => $request->limit,
                'offset' => $students->currentPage(),
                'fields' => $request->fields,
            ],
            'students' => $students->items(),
        ]);
    }

    public function store(Request $request)
    {
        $student = Student::create($request->all());

        return response()->json($student, 201);
    }

    public function show(Student $student)
    {
        return response()->json($student);
    }

    public function update(Request $request, Student $student)
    {
        $student->update($request->all());

        return response()->json($student);
    }
}