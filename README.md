# SpringSecurityRememberMe

# Introduction :

Remember-me or persistent-login authentication refers to web sites being able to remember the identity of a principal between sessions. This is typically accomplished by sending a cookie to the browser, with the cookie being detected during future sessions and causing automated login to take place. Spring Security provides the necessary hooks for these operations to take place, and has two concrete remember-me implementations. One uses hashing to preserve the security of cookie-based tokens and the other uses a database or other persistent storage mechanism to store the generated tokens.

Spring provides an Interface for remember me, that is RememberMeServices.This interface has two implementations 

1. TokenBasedRememberMeServices
2. PersistentTokenBasedRememberMeServices.

RememberMeServices is hooked in UsernamePasswordAuthenticationFilter, which will invoke a concrete RememberMeServices at the appropriate times.This interface therefore provides the underlying remember-me implementation with sufficient notification of authentication-related events, and delegates to the implementation whenever a candidate web request might contain a cookie and wish to be remembered.

This application provide a simple login form with remember me enabled.Here we use PersistentTokenBasedRememberMeServices.

# PersistentTokenBasedRememberMeServices : 

PersistentTokenBasedRememberMeServices, name itself explains token is persisted in repository and for every request it will get token from repository and compares with user token.Rest all is same as TokenBasedRememberMeServices.
PersistentTokenBasedRememberMeServices generate token named PersistentRememberMeToken which contains username,series(random value),tokenValue(Random value) and date.And this token is persisted in repository to remember.

Currentlly PersistentTokenBasedRememberMeServices supports two types of repository to persist token.

1) InMemoryTokenRepositoryImpl which is intended for testing only.

2) JdbcTokenRepositoryImpl which stores the tokens in a database.

we use JdbcTokenRepositoryImpl in this application.
