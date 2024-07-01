<?php

namespace App\Http\Controllers;

use App\Models\Subject;
use App\Models\Student;
use Illuminate\Http\Request;

class SubjectController extends Controller
{
    public function index(Student $student, Request $request)
    {
        $query = $student->subjects();

        if ($request->filled('search')) {
            $query->where('name', 'like', "%{$request->search}%")
                  ->orWhere('subject_code', 'like', "%{$request->search}%");
        }

        if ($request->filled('sort')) {
            $query->orderBy($request->sort, $request->direction ?? 'asc');
        }

        $subjects = $query->paginate($request->limit ?? 15);

        return response()->json([
            'metadata' => [
                'count' => $subjects->total(),
                'search' => $request->search,
                'limit' => $request->limit,
                'offset' => $subjects->currentPage(),
                'fields' => $request->fields,
            ],
            'subjects' => $subjects->items(),
        ]);
    }

    public function store(Student $student, Request $request)
    {
        $subject = $student->subjects()->create($request->all());

        return response()->json($subject, 201);
    }

    public function show(Subject $subject)
    {
        return response()->json($subject);
    }

    public function update(Request $request, Subject $subject)
    {
        $subject->update($request->all());

        return response()->json($subject);
    }
}