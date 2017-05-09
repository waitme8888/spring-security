CREATE TABLE `oauth_access_token` (
  `token_id` varchar(200) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(200) DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `client_id` varchar(200) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(200) DEFAULT NULL
);

CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(200) DEFAULT NULL,
  `token` blob,
  `authentication` blob
);

CREATE TABLE `oauth_client_details` (
  `resource_ids` varchar(200) DEFAULT NULL,
  `scope` varchar(200) DEFAULT NULL,
  `authorized_grant_types` varchar(200) DEFAULT NULL,
  `web_server_redirect_uri` varchar(200) DEFAULT NULL,
  `authorities` varchar(200) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(200) DEFAULT NULL,
  `autoapprove` tinyint(1) DEFAULT NULL
);
insert into `oauth_client_details` (`client_id`, `client_secret`, `resource_ids`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`) values('acme','acmesecret','resource3','openid','authorization_code,refresh_token',NULL,NULL,'7200','7200',NULL,'1');
