package com.spring.security.example.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

/**
 * @author <a href="mailto:psunil1278@gmail.com">Sunil Kumar</a>
 * @since 24/1/16
 */

@Entity
@Table(name = "persistent_logins")
public class PersistentLogin {

    @Id
    @Column(name = "series", unique = true, nullable = false, length = 64)
    private String series;

    @Column(name = "username", nullable = false, length = 64)
    private String username;

    @Column(name = "token", nullable = false, length = 64)
    private String token;

    @Column(name = "last_used", nullable = false)
    @Type(type = "timestamp")
    private Date last_used;

    public PersistentLogin() {
    }

    public PersistentLogin(final String series, final String username, final String token, final Date last_used) {
        this.series = series;
        this.username = username;
        this.token = token;
        this.last_used = last_used;
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(final String series) {
        this.series = series;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(final String username) {
        this.username = username;
    }

    public String getToken() {
        return token;
    }

    public void setToken(final String token) {
        this.token = token;
    }

    public Date getLast_used() {
        return last_used;
    }

    public void setLast_used(final Date last_used) {
        this.last_used = last_used;
    }
}
