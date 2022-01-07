
/*
 HackerLand University has the following grading policy:
 
 - Every student receives a grade in the inclusive range from 0 to 100.
 - Any grade less than 40 is a failing grade.
 
 Sam is a professor at the university and likes to round each student's grade according to these rules:
 1. If the difference between the grade and the next multiple of 5 is less than 3, round grade up to the next multiple of 5.
 2. If the value of grade is less than 38, no rounding occurs as the result will still be a failing grade.
 Ref: https://www.hackerrank.com/challenges/grading/problem
 */

import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    var finalGrades: [Int] = []
    grades.forEach { grade in
        if grade < 38 {
            // If the value of grade is less than 38, no rounding occurs as the result will still be a failing grade.
            finalGrades.append(grade)
        } else {
            // If the difference between the grade and the next multiple of 5 is less than 3, round grade up to the next multiple of 5.
            let nextMultipleByFive = grade + 5 - (grade % 5)
            finalGrades.append(((nextMultipleByFive - grade) < 3) ? nextMultipleByFive : grade)
        }
    }
    return finalGrades
}

let grades = [73, 67, 40, 33]
let finalGrades = gradingStudents(grades: grades)
print("Final Grades: \(finalGrades)")
