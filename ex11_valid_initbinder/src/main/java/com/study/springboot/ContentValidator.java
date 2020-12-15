package com.study.springboot;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ContentValidator implements Validator {

    @Override
    public boolean supports(Class<?> clazz) {
        return ContentDto.class.isAssignableFrom(clazz); //검증할 객체의 클래스 타입정보
    }

    @Override
    public void validate(Object target, Errors errors) {

        ContentDto dto = (ContentDto)target;

/*
        String sWriter = dto.getWriter();
        if(sWriter == null || sWriter.trim().isEmpty()){
            System.out.println("Writer is null or empty");
            errors.rejectValue("writer","trouble");
        }
*/
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"writer","writer is empty.");
        String sWriter = dto.getWriter();
        if(sWriter.length() < 3){
            errors.rejectValue("writer","writer is too short.");
        }

        /*String sContent = dto.getContent();
        if(sContent == null || sContent.trim().isEmpty()){
            System.out.println("Content is null or empty");
            errors.rejectValue("content", "trouble");
        }*/
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"content","content is empty.");

    }
}
