package com.zjy.losonkei.common.security.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.pam.AuthenticationStrategy;
import org.apache.shiro.realm.Realm;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Created by zjy on 2017/1/8.
 */
public class ModularRealmAuthenticator extends org.apache.shiro.authc.pam.ModularRealmAuthenticator {

    private static final Logger log = LoggerFactory.getLogger(ModularRealmAuthenticator.class);

    @Override
    protected AuthenticationInfo doMultiRealmAuthentication(Collection<Realm> realms, AuthenticationToken token) {
        AuthenticationStrategy strategy = getAuthenticationStrategy();

        AuthenticationInfo aggregate = strategy.beforeAllAttempts(realms, token);

        List<AuthenticationException> exceptions = new ArrayList<AuthenticationException>();

        if (log.isTraceEnabled()) {
            log.trace("Iterating through {} realms for PAM authentication", realms.size());
        }

        for (Realm realm : realms) {

            aggregate = strategy.beforeAttempt(realm, token, aggregate);

            if (realm.supports(token)) {

                log.trace("Attempting to authenticate token [{}] using realm [{}]", token, realm);

                AuthenticationInfo info = null;
                AuthenticationException t = null;
                try {
                    info = realm.getAuthenticationInfo(token);
                } catch (AuthenticationException throwable) {

                    exceptions.add(throwable);

                    t = throwable;
                    if (log.isDebugEnabled()) {
                        String msg = "Realm [" + realm + "] threw an exception during a multi-realm authentication attempt:";
                        log.debug(msg, t);
                    }
                }

                aggregate = strategy.afterAttempt(realm, token, info, aggregate, t);

            } else {
                log.debug("Realm [{}] does not support token {}.  Skipping realm.", realm, token);
            }
        }

        aggregate = strategy.afterAllAttempts(token, aggregate);

        if(!exceptions.isEmpty()){
            throw exceptions.get(0);
        }

        return aggregate;
    }
}
