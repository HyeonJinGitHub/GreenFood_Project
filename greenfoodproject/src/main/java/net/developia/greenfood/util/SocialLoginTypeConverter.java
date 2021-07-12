package net.developia.greenfood.util;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.convert.converter.Converter;

import net.developia.greenfood.dto.SocialLoginType;

@Configuration
public class SocialLoginTypeConverter implements Converter<String, SocialLoginType> {
    @Override
    public SocialLoginType convert(String s) {
        return SocialLoginType.valueOf(s.toUpperCase());
    }
}
