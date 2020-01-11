package ru.voskhod.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator
        implements ConstraintValidator<CourseCode, String> {

    private String[] coursePrefixes;

    @Override
    public void initialize(CourseCode courseCode) {
        coursePrefixes = courseCode.value() ;
    }

    @Override
    public boolean isValid(String actualCourseCode, ConstraintValidatorContext constraintValidatorContext) {

        if (actualCourseCode != null) {
            for (String prefix : coursePrefixes) {
                if (actualCourseCode.startsWith(prefix)) {
                    return true;
                }
            }
            return false;
        } else {
            return true;
        }


    }
}
