package com.waitme.oauth2.jwt.test;


import org.springframework.core.io.ClassPathResource;
import org.springframework.security.crypto.codec.Base64;

import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.PublicKey;

public class JksTest {

    public static void main(String[] args) throws Exception {
        KeyStore keyStore = KeyStore.getInstance("JKS");
        keyStore.load(new ClassPathResource("oauth.jks").getInputStream(), "123456".toCharArray());
        PublicKey pubKey= keyStore.getCertificate("test").getPublicKey();
        String base64Pubkey = new String(Base64.encode(pubKey.getEncoded()));
        System.out.println(base64Pubkey);
    }

}
