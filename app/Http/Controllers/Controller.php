<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function index(Request $request)
    {
        // Your logic to get students with filters, sorting, and pagination
        $filters = $request->only(['year', 'course', 'section', 'search', 'sort', 'direction']);
        $students = Student::filter($filters)->paginate($request->input('limit', 10));
        
        return response()->json([
            'metadata' => [
                'count' => $students->total(),
                'search' => $filters['search'] ?? null,
                'limit' => $students->perPage(),
                'offset' => $students->currentPage(),
                'fields' => $filters
            ],
            'students' => $students->items()
        ], 200);
    }

    public function store(Request $request)
    {
        // Your logic to store a new student
        $student = Student::create($request->all());
        return response()->json($student, 201);
    }

    public function show($id)
    {
        // Your logic to show a specific student
        $student = Student::findOrFail($id);
        return response()->json($student);
    }

    public function update(Request $request, $id)
    {
        // Your logic to update a specific student
        $student = Student::findOrFail($id);
        $student->update($request->all());
        return response()->json($student);
    }
}
