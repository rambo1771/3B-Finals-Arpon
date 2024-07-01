<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Subject>
 */
class SubjectFactory extends Factory
{
    public function definition()
    {
        $grades = [
            'prelims' => $this->faker->randomFloat(2, 1, 5),
            'midterms' => $this->faker->randomFloat(2, 1, 5),
            'pre_finals' => $this->faker->randomFloat(2, 1, 5),
            'finals' => $this->faker->randomFloat(2, 1, 5),
        ];
        $average_grade = array_sum($grades) / 4;
        $remarks = $average_grade >= 3.0 ? 'PASSED' : 'FAILED';

        return [
            'subject_code' => $this->faker->unique()->bothify('???-###'),
            'name' => $this->faker->words(3, true),
            'description' => $this->faker->sentence,
            'instructor' => $this->faker->name,
            'schedule' => $this->faker->dayOfWeek . ' ' . $this->faker->time,
            'grades' => $grades,
            'average_grade' => $average_grade,
            'remarks' => $remarks,
            'date_taken' => $this->faker->date,
        ];
    }
}
