package com.example.dias;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import javax.sql.DataSource;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private DataSource dataSource;

    /*@Bean
    PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }*/

    @Override
    protected void configure(final AuthenticationManagerBuilder auth) throws Exception{

        auth.jdbcAuthentication()
                .dataSource(dataSource);
//                .passwordEncoder(NoOpPasswordEncoder.getInstance())

//        User.UserBuilder userBuilder = User.withDefaultPasswordEncoder();
//        auth.inMemoryAuthentication()
//                .withUser(userBuilder
//                        .username("admin")
//                        .password("admin")
//                        .roles("ADMIN"))
//                .withUser(userBuilder
//                        .username("user1")
//                        .password("user1")
//                        .roles("USER"));
    }

    @Override
    protected void configure(final HttpSecurity http) throws Exception{

        http
                .authorizeRequests()
                    .antMatchers("/").permitAll()
                    .antMatchers("/watch").permitAll()
                    .antMatchers("/register").permitAll()
                    .antMatchers("/checkRead").hasRole("ADMIN")
                    .antMatchers("/updateId").hasRole("ADMIN")
                    .antMatchers("/delete").hasRole("ADMIN")
                .and()
                    .formLogin()
                    .permitAll()
                .and()
                    .logout()
                    .permitAll()
                    .logoutSuccessUrl("/");
    }

}
