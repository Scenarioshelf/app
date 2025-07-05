SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.5 (Ubuntu 15.5-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'ff874a5c-2fb2-4a15-80cb-c4d4d5a8913d', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"micady.dev@gmail.com","user_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","user_phone":""}}', '2024-06-08 13:11:13.311572+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b1d08aee-d2eb-4e12-ac1d-6c1bff96b259', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"admin@scenarioshelf.com","user_id":"81363697-5977-470a-bae8-d4575bc8de06","user_phone":""}}', '2024-06-08 13:12:48.692809+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd7919a17-f6c4-454b-8299-ffddcbb8bc5f', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test_user@test.com","user_id":"f05151be-42b1-4474-a829-38f1ebb4deb8","user_phone":""}}', '2024-06-08 13:13:16.7637+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b414b1a-bf98-498b-b2dd-d8a47f17efdf', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test_user2@test.com","user_id":"65855918-d819-4f32-ad9a-b50de7654c30","user_phone":""}}', '2024-06-08 13:14:13.720843+00', ''),
	('00000000-0000-0000-0000-000000000000', '026541ea-bdbe-4826-973d-514c592ba970', '{"action":"login","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-06-09 13:23:34.467106+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d0994f0-8d6a-4fdf-b36f-7b66c905633f', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:48:08.052691+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2ee5971-5832-4978-9161-45089376fa62', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:48:08.05482+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e1d9e1b-987a-4c94-82b4-a8dddbdf3b1c', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:52:47.532431+00', ''),
	('00000000-0000-0000-0000-000000000000', '559876c9-3a99-4837-a498-cc473e0d9019', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:52:47.533868+00', ''),
	('00000000-0000-0000-0000-000000000000', '2506a160-19a2-4100-8098-3c2257d52459', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:54:10.687978+00', ''),
	('00000000-0000-0000-0000-000000000000', '978dca8a-9ae7-4bd8-9b15-2c51fba15549', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:54:10.688508+00', ''),
	('00000000-0000-0000-0000-000000000000', '1398e757-f96c-467c-baa1-f2964fa925e6', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:56:49.89259+00', ''),
	('00000000-0000-0000-0000-000000000000', 'afe1331d-81b2-41b9-8684-5e4168c2d3e5', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:56:49.8934+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fd3ac20b-0e61-4574-8737-538582d4e6cd', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 15:42:38.59882+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e59c2d8-3d5b-455c-9add-8c2c6c81b176', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 15:42:38.600016+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b3ded46f-1465-4ac2-a284-3ddbb6db6d6b', '{"action":"login","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-06-10 02:17:10.65701+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a89bb5ee-bab7-444b-b574-94e39d437d22', '{"action":"user_modified","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-06-10 02:18:28.259318+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd40e702d-95a8-43c4-8f89-14530546c625', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 03:16:36.218498+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b435463b-12aa-45c0-8e70-a0060a1a44af', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 03:16:36.220063+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c6db7af-a3fd-4880-a56a-acfa2c4e0a22', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 04:15:56.284685+00', ''),
	('00000000-0000-0000-0000-000000000000', '3db7a067-0bd3-4aae-b565-dcf1faf02cf3', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 04:15:56.286085+00', ''),
	('00000000-0000-0000-0000-000000000000', '7577e486-28b9-4150-ae78-cf9fece4977e', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 05:15:16.212906+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb2e3f55-835f-4dea-8042-0bf7d090a886', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 05:15:16.214342+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae1e15b0-033e-4e65-9136-74e2751772ef', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 06:14:26.232698+00', ''),
	('00000000-0000-0000-0000-000000000000', '5364aff2-fa51-44c1-aec1-eda627d3d462', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 06:14:26.235048+00', ''),
	('00000000-0000-0000-0000-000000000000', '2a2ae572-d016-4c77-ad45-1a530e7a3cb7', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 11:52:31.050006+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f74a1b8a-ed37-4dcd-9ef5-ca3f713fb961', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 11:52:31.051524+00', ''),
	('00000000-0000-0000-0000-000000000000', '281e0c2a-0748-497d-a790-72656e8f12b4', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 12:52:00.61671+00', ''),
	('00000000-0000-0000-0000-000000000000', '3100a945-079b-4ab9-9afb-5f0e07153a52', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 12:52:00.6181+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e387d1ae-d3da-43f7-a8c0-83c9ea0ece6d', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 13:40:20.662848+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b53bb2be-8d79-4430-96ac-b595de94ca1c', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 13:40:20.665774+00', ''),
	('00000000-0000-0000-0000-000000000000', '800b03db-a26a-4880-b26e-a6eabda0bff0', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 14:28:28.783464+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a9ea1feb-7def-425e-88a2-5bf1e65f847a', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 14:28:28.785058+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e652285-1498-4900-9e22-92f7c5099504', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-12 13:52:38.905866+00', ''),
	('00000000-0000-0000-0000-000000000000', '247b9225-fb24-4e42-ab7c-b424a3ba5391', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-12 13:52:38.90657+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fc43ea98-331c-49b4-ae6a-fbe6185947f8', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-12 13:52:39.871169+00', ''),
	('00000000-0000-0000-0000-000000000000', '78723ee5-f2f1-441e-acdd-88e462dc73a5', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 11:46:01.216309+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a6fe4f1d-82b4-4e73-8411-4e3c3f5e5897', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 11:46:01.218849+00', ''),
	('00000000-0000-0000-0000-000000000000', '06d1e4d6-0a13-4d8f-bd05-4e500d413487', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 14:51:50.922288+00', ''),
	('00000000-0000-0000-0000-000000000000', '1dae1f38-8849-4986-8f19-a3c6c5988e27', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 14:51:50.923587+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb187ac1-7bfc-479b-a4a1-c73ee688797d', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 15:51:18.749245+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ba7db69-9b53-45fe-abc4-262388ae0e6b', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 15:51:18.750414+00', ''),
	('00000000-0000-0000-0000-000000000000', '930f84d2-381e-4864-8d1d-4b2e5ff84754', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 16:50:38.731066+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e73b162b-2ba7-44b7-918b-997807e5c42b', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 16:50:38.733684+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b012082e-949f-4bc9-8fa1-e22708bbd3dc', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 17:44:58.666686+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e13be28-c2bb-4530-8c5e-b45a6871e34b', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 17:44:58.667903+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f804e7ce-c5c4-4ef6-a82a-57df5debb0e6', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 18:39:08.681936+00', ''),
	('00000000-0000-0000-0000-000000000000', '420f2faa-775b-4941-ab1b-bff11547a09f', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 18:39:08.683295+00', ''),
	('00000000-0000-0000-0000-000000000000', '0f73c749-ac80-4e6a-bcb7-aabaaf2f9d7d', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 19:33:18.749542+00', ''),
	('00000000-0000-0000-0000-000000000000', '5923b4a8-8936-4d02-adfe-0d4520e8faed', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 19:33:18.750408+00', ''),
	('00000000-0000-0000-0000-000000000000', '5965b938-a5c8-43bc-9cb8-9166246d14a0', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 20:29:58.732387+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c057141-4f71-4914-b7e8-4fba714f8d8a', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 20:29:58.733367+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c68e5fa-6ecf-431a-a886-7e68c5d60c69', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 21:26:28.728068+00', ''),
	('00000000-0000-0000-0000-000000000000', '553d7a44-2e2a-436a-8db1-595568b7505f', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 21:26:28.731929+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0471722-13ca-4fed-9cf8-75c6db27463a', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 22:20:08.73709+00', ''),
	('00000000-0000-0000-0000-000000000000', '2365fcde-234d-4bbb-ba6a-8e88a018241a', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 22:20:08.738688+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ccbe4543-063e-42b4-9156-c6142df77b32', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 23:10:48.655907+00', ''),
	('00000000-0000-0000-0000-000000000000', '8243d622-dda6-4fda-b481-087709adae6d', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-13 23:10:48.657951+00', ''),
	('00000000-0000-0000-0000-000000000000', '3ffaad5c-8652-4eb1-9b1a-2df8d72f5953', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 00:20:36.630107+00', ''),
	('00000000-0000-0000-0000-000000000000', '98d9e14f-59a1-479b-abb3-35d693fb65d9', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 00:20:36.63185+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c880a126-0b97-4148-811f-2773a04df34a', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 01:35:04.268591+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f52aec3d-f0e7-4b82-9005-c689d213aee0', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 01:35:04.270648+00', ''),
	('00000000-0000-0000-0000-000000000000', '7122826b-8515-4e5e-95d0-dee0b8ee074d', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 02:18:08.685491+00', ''),
	('00000000-0000-0000-0000-000000000000', '85f44ae7-1410-47b3-a2bd-334cd75f2715', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 02:18:08.686837+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b931ddff-d019-4089-94d3-d1d7f46e568d', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 03:03:48.715357+00', ''),
	('00000000-0000-0000-0000-000000000000', '628f1be6-31fc-44dc-987b-db471279d83f', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 03:03:48.716082+00', ''),
	('00000000-0000-0000-0000-000000000000', '270dd1b3-49c7-4fb5-9b76-4284bdc6d2f1', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 03:20:39.989096+00', ''),
	('00000000-0000-0000-0000-000000000000', '43d88377-4af9-48ab-aaf1-b0b139f97e1d', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 03:20:39.990076+00', ''),
	('00000000-0000-0000-0000-000000000000', '02b3c879-1327-4f50-93df-3812efaa44f5', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 04:04:58.621982+00', ''),
	('00000000-0000-0000-0000-000000000000', '84539fab-4239-4b9c-b335-71159d2fe155', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 04:04:58.623175+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ffc9905-5bb7-4eee-837e-3c21ec434b5c', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 04:05:06.357232+00', ''),
	('00000000-0000-0000-0000-000000000000', '3f1a1f4c-437c-4c21-acba-feed2f2e64a1', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 04:05:06.358215+00', ''),
	('00000000-0000-0000-0000-000000000000', '873b46ac-0ea8-43ea-9194-6cc06c521739', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 04:05:10.680706+00', ''),
	('00000000-0000-0000-0000-000000000000', '69719af7-2a5b-4294-8d8c-d5f28e76f487', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 04:05:10.681504+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc000872-8afb-4f45-a703-876b0ff0f945', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 05:05:18.562906+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c7bd2c6-3e07-4b15-a817-dcf507ccfe0b', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 05:05:18.563624+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0a71c54-096d-484f-9dd4-28a44e4572a1', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 05:06:08.020332+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c01cddb5-a306-4038-b64c-1b52e08617f5', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 05:06:08.025036+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c7a4fa76-0f41-4425-a071-e3be2fba0da1', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 05:06:11.72911+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d47e2c6-09e3-4136-b553-4fb3b5452357', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 05:06:11.729903+00', ''),
	('00000000-0000-0000-0000-000000000000', '70b28a2a-ef81-404b-9def-01adfdd3f959', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 06:06:18.507587+00', ''),
	('00000000-0000-0000-0000-000000000000', '9116fa39-c00a-4fa7-9504-f7d43833f9c0', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 06:06:18.508228+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf6d4ba2-3203-4840-ba76-d50331ef9862', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 06:41:25.724905+00', ''),
	('00000000-0000-0000-0000-000000000000', '57cce11d-7f64-4b59-8129-b5e0f8d1132a', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 06:41:25.725773+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e119a57f-462e-4961-a1bd-ddd20359c21b', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 07:37:44.653225+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ffada3a-e5c4-42d1-8407-c80a230ba9f8', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 07:37:44.654056+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c04a1c0b-14ba-43fa-9ed4-3b39c4ca1769', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 08:25:47.624336+00', ''),
	('00000000-0000-0000-0000-000000000000', '56e777d7-1ad5-4e87-8959-14015a59ae7c', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 08:25:47.625376+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd77497f5-c2c1-418d-996c-56256a469a6b', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 08:47:38.086919+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7be326c-7349-4287-b6c5-fc8b8eb67cd2', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 08:47:38.088756+00', ''),
	('00000000-0000-0000-0000-000000000000', '66d24ea0-cc9a-4e82-a3a1-8356493701b4', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 09:53:28.166351+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4c530e9-0cd9-45bf-996e-3c891ce13c34', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 09:53:28.16721+00', ''),
	('00000000-0000-0000-0000-000000000000', '66f509d4-c79c-46ed-b41c-a9ce1bb4f2a1', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 10:50:48.644988+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f8814db3-faad-47ec-8397-7df7099ff947', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 10:50:48.645755+00', ''),
	('00000000-0000-0000-0000-000000000000', '23a11673-c9b9-4c09-a27c-1cd31d1a12bf', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 11:50:08.69255+00', ''),
	('00000000-0000-0000-0000-000000000000', '2dc2f3f2-71b9-429e-81bd-622dd1a8af90', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 11:50:08.695089+00', ''),
	('00000000-0000-0000-0000-000000000000', '96d2a3fd-b679-412b-a093-3e78b82beba7', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 11:50:23.439138+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f66fc540-ea25-47cd-8dbc-9f5e77a0900f', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 11:50:23.439775+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f12af95-3648-40de-abe6-578a929f0d95', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 12:50:28.695848+00', ''),
	('00000000-0000-0000-0000-000000000000', '683d4496-f08b-4a3a-94f9-df71b9efc819', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 12:50:28.697763+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1ab8aad-9b9b-4666-b611-62796aa5933e', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 13:40:48.683073+00', ''),
	('00000000-0000-0000-0000-000000000000', '31e7e4c0-b510-41e4-940d-b7d0220775d0', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 13:40:48.684048+00', ''),
	('00000000-0000-0000-0000-000000000000', '058760f0-25e0-41cb-aa5e-93bdab13dc33', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 14:27:58.618316+00', ''),
	('00000000-0000-0000-0000-000000000000', '1b9e7381-3f41-471c-a25f-2200be757fbb', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 14:27:58.619072+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec96c6eb-7941-4adb-af5b-e7b9cb65d792', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 15:21:44.940192+00', ''),
	('00000000-0000-0000-0000-000000000000', '4fba1221-f43b-43be-afd7-6fc950a2fb37', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 15:21:44.941644+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a59f87b4-ee9e-4573-8e83-c19c8e3b61e3', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 16:11:16.618301+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2c69f57-4c83-4934-87b0-3eb11a1eb94d', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 16:11:16.619084+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c567f3b8-d3a8-475a-b6bb-1f6deb99642e', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 16:55:18.496476+00', ''),
	('00000000-0000-0000-0000-000000000000', '1e067c25-f67a-4bb3-ae79-d86cbe39cb28', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 16:55:18.499109+00', ''),
	('00000000-0000-0000-0000-000000000000', 'baac89ec-5017-42da-b7d8-b6dfd8e69d3d', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 17:45:38.500033+00', ''),
	('00000000-0000-0000-0000-000000000000', '7d82092d-572a-4b54-be95-bb4e3d3000fb', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 17:45:38.501504+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ed8a199-dce0-48cd-b661-e7702f4ecd79', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 17:56:22.862736+00', ''),
	('00000000-0000-0000-0000-000000000000', '2980579e-a5b6-44f0-92b0-6c2f38aa6fc6', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 17:56:22.863909+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ef220ae-15bf-4522-a26d-25cda39dceb7', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 19:04:15.14494+00', ''),
	('00000000-0000-0000-0000-000000000000', '8bd3d9d2-cf26-46f5-ba3f-8685fc582247', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 19:04:15.145927+00', ''),
	('00000000-0000-0000-0000-000000000000', '185262b1-57c9-4c6e-a7b3-bf0ddd83236d', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 19:54:48.556838+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ff362946-6d7c-4845-ad8f-d46a3fa91b0f', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 19:54:48.558749+00', ''),
	('00000000-0000-0000-0000-000000000000', '96348f6e-5de2-4d20-ae44-8ee4e075d314', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 19:55:09.607871+00', ''),
	('00000000-0000-0000-0000-000000000000', '57bbe26d-6c20-4da9-9ec1-cde9a5d8c218', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 19:55:09.609307+00', ''),
	('00000000-0000-0000-0000-000000000000', '200db0b2-354e-48e0-8a82-e79d5fc8d623', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 21:17:18.441477+00', ''),
	('00000000-0000-0000-0000-000000000000', '99add730-7693-4d25-9e29-d53b4711753a', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 21:17:18.442694+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a438e2d6-97d9-4cd0-85a3-90f1c8b138bd', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 22:09:18.472896+00', ''),
	('00000000-0000-0000-0000-000000000000', '0fe3239b-fa51-4744-93f2-8a6441aa667b', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 22:09:18.474312+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c815a05-4be7-4de0-ba79-e36f6b8e633f', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 22:44:30.900427+00', ''),
	('00000000-0000-0000-0000-000000000000', '53265bc2-dd4f-4dcd-be52-ff549853cd83', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 22:44:30.901174+00', ''),
	('00000000-0000-0000-0000-000000000000', '47685980-e39e-41a6-87d7-c69e8d0a6934', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 23:32:30.549571+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9cf0d5b-100d-47eb-8fc1-5ca83082ad72', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-14 23:32:30.550526+00', ''),
	('00000000-0000-0000-0000-000000000000', '34682e6f-7850-4a70-a453-871f1619ab9d', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 00:10:40.175676+00', ''),
	('00000000-0000-0000-0000-000000000000', '66a738c8-87f7-410f-8bb9-a7829a9c7353', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 00:10:40.176744+00', ''),
	('00000000-0000-0000-0000-000000000000', '92385d0f-4f22-4ebf-992e-c29b4905e6d7', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 01:11:31.443967+00', ''),
	('00000000-0000-0000-0000-000000000000', '4a6fcb88-e698-4d04-bb85-a23681aef453', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 01:11:31.445443+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eddcdb15-126b-4f6e-8f6f-e30a4bc56559', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 01:54:48.5028+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd973e65a-fef0-4de6-a620-16c82b8e58fe', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 01:54:48.504238+00', ''),
	('00000000-0000-0000-0000-000000000000', '68ea8405-016c-470d-b325-7245a32066bd', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 02:13:34.585192+00', ''),
	('00000000-0000-0000-0000-000000000000', '04d396cb-1934-42c9-996f-9474c2b8cecf', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 02:13:34.586702+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a5f1c288-372c-4db3-a058-561187db29df', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 02:55:54.570374+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a505dba3-4d57-4ab8-a8c2-09c7a3832302', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 02:55:54.571241+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d4399c3-2469-4829-97a6-13b1b512d364', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 02:56:00.275695+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0c356b8-cd5e-492d-860e-2a2b90f67ced', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 02:56:00.277034+00', ''),
	('00000000-0000-0000-0000-000000000000', '198fca5b-5b27-41f7-afe4-6f6d74d400c5', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 02:56:01.684239+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e61ff6a-6684-4964-aac0-618c4581d6cb', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 02:56:01.685402+00', ''),
	('00000000-0000-0000-0000-000000000000', '97e0da16-c82c-4e4c-9d10-8c40cbbcc7fb', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 03:56:08.52539+00', ''),
	('00000000-0000-0000-0000-000000000000', '62e7e728-0847-4fb1-91b4-9d3e665f1a49', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 03:56:08.526212+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1b203c0-7dba-4ace-9cb9-55ad052380c7', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 04:18:22.590914+00', ''),
	('00000000-0000-0000-0000-000000000000', '11a69f4b-11ef-4efd-acfe-3dd7985c1af0', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 04:18:22.592441+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f518d11-812e-4dc9-8e98-232c985b97a1', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 04:57:38.518783+00', ''),
	('00000000-0000-0000-0000-000000000000', '978d6bb0-5448-4f64-a046-931ef66300e1', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 04:57:38.520467+00', ''),
	('00000000-0000-0000-0000-000000000000', '364a8da7-53fb-4a3f-8355-159d6ebf9133', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 05:56:58.442299+00', ''),
	('00000000-0000-0000-0000-000000000000', '017c2d74-fa4a-458b-8d27-2400e8e2a6a2', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 05:56:58.443253+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6ebb8c6-e68e-46c6-8948-58f876a706db', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 06:37:27.846272+00', ''),
	('00000000-0000-0000-0000-000000000000', '3303ed37-6a9f-42f0-8278-91d1ebc36850', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 06:37:27.847937+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd307496f-1b1a-4df7-8ce3-1447004118e4', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 07:12:37.388915+00', ''),
	('00000000-0000-0000-0000-000000000000', '92c0ada9-a016-4518-b78e-27689ecb49d0', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 07:12:37.39046+00', ''),
	('00000000-0000-0000-0000-000000000000', '90c8ae75-0ead-4a65-a950-5be53daabb46', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 08:11:57.359518+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3c04e7f-f876-4057-9cf1-5bfcade42ae9', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 08:11:57.360854+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e811272d-4d67-484f-a652-0ed68ef0f293', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 09:11:21.523109+00', ''),
	('00000000-0000-0000-0000-000000000000', '4cfcf63c-c021-4040-8ac8-a4a170fdf891', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 09:11:21.525817+00', ''),
	('00000000-0000-0000-0000-000000000000', '3784a9cc-e1ef-4c8c-b18a-cb610671a258', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 10:02:31.111883+00', ''),
	('00000000-0000-0000-0000-000000000000', '7332088a-adb8-4a98-af49-5444b70691b8', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 10:02:31.112959+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a12753b-7324-4e7b-b376-d2368f3cfb81', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 10:52:01.459336+00', ''),
	('00000000-0000-0000-0000-000000000000', '23ea30be-4ddd-487d-8196-9a9b09bcd22b', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 10:52:01.463214+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b098155e-3d27-49b7-8d3e-b802f1666cac', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 11:50:51.492108+00', ''),
	('00000000-0000-0000-0000-000000000000', '3f838d20-f257-48a7-8897-9f928a37a619', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 11:50:51.495784+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec3a55e6-9f6d-411e-891b-28be165e4c37', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 12:41:48.958351+00', ''),
	('00000000-0000-0000-0000-000000000000', '7556e1bd-4905-41e7-9546-bb88a993c1a0', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 12:41:48.960388+00', ''),
	('00000000-0000-0000-0000-000000000000', '0f72db92-ba76-407c-9a5e-1f8d55f88c8b', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 13:47:35.147442+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a255ae34-8c72-4d82-ab05-bb7b329572d5', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 13:47:35.148732+00', ''),
	('00000000-0000-0000-0000-000000000000', '99d7996e-b314-4a8b-bab3-ce0602b3427f', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 14:15:45.554512+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a6bb4ffc-26cf-4e30-acc0-09edd621a6d9', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 14:15:45.555603+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d02c3fa-66d1-4df8-afa3-85b8653c52c5', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 15:15:54.032397+00', ''),
	('00000000-0000-0000-0000-000000000000', '29d02de8-20e9-4111-b396-9fa70ca39e3d', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 15:15:54.03346+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ba726b6-213c-47da-a6cb-ace8e713fc68', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 16:09:46.398676+00', ''),
	('00000000-0000-0000-0000-000000000000', '492cef1d-de05-4773-8e4a-ec8a09eecffe', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 16:09:46.4009+00', ''),
	('00000000-0000-0000-0000-000000000000', '85a858e6-abda-4d79-b8e2-b8d5e15bb3d6', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 17:05:41.422918+00', ''),
	('00000000-0000-0000-0000-000000000000', '48b91f83-63e4-439b-80a5-ea8b9c7750fc', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 17:05:41.424211+00', ''),
	('00000000-0000-0000-0000-000000000000', '001db1a8-7192-4197-859b-6f711db85882', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 17:52:51.434441+00', ''),
	('00000000-0000-0000-0000-000000000000', 'addc9197-e02f-41de-85c6-51b578485943', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 17:52:51.436028+00', ''),
	('00000000-0000-0000-0000-000000000000', '96ad30d3-fbc3-4079-a3bb-14eac0ec05f3', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 18:42:31.41226+00', ''),
	('00000000-0000-0000-0000-000000000000', '7751cc28-cdd1-4b86-8c89-8a691ea1dd7f', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 18:42:31.449496+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c099b433-ee22-4769-b0b9-ff8949803c6f', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 19:34:51.424994+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b970babd-6134-44d4-936e-e6e8901b6148', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 19:34:51.427124+00', ''),
	('00000000-0000-0000-0000-000000000000', '1e791205-e74c-4d40-aed6-2fe8597826ed', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 19:52:57.190206+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aa6eb7c3-1833-4226-9b36-e4297347ea04', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 19:52:57.191972+00', ''),
	('00000000-0000-0000-0000-000000000000', '28bbd83f-7132-4d89-8ec9-ba302b5493c6', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 19:53:02.858608+00', ''),
	('00000000-0000-0000-0000-000000000000', '6e507315-c0be-4f97-9a50-eda57a0fc712', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 19:53:02.859141+00', ''),
	('00000000-0000-0000-0000-000000000000', '8fbfd92a-245d-420e-ace1-48d207188d0e', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 19:53:08.189614+00', ''),
	('00000000-0000-0000-0000-000000000000', '779087e2-ebbb-4956-b2e7-c3164d073950', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 19:53:08.190212+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2479829-7a39-4c41-b13e-cb82c267982c', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 19:53:15.57053+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a53f96cd-98d3-4acb-868f-1c7157a1a1c2', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 19:53:15.571516+00', ''),
	('00000000-0000-0000-0000-000000000000', '86f78b8e-f21b-4590-ac06-7378c468ab50', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 21:10:01.367272+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cad1fcb4-c857-4f2b-b329-7a38ba084c36', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 21:10:01.3682+00', ''),
	('00000000-0000-0000-0000-000000000000', '4c1dd176-fd53-4216-96f7-31589bee22ca', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 21:29:55.750013+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd06ca02-b405-4b8f-8016-ca92b5c7b54e', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 21:29:55.750636+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c39c0c3-8711-4802-980d-719563c01c3b', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 21:30:09.380136+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a5323be3-5c87-4704-84b8-6433b2f8c630', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 21:30:09.38089+00', ''),
	('00000000-0000-0000-0000-000000000000', '07c26d52-1ef0-427b-b5bb-5a7a142757df', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 21:30:10.071652+00', ''),
	('00000000-0000-0000-0000-000000000000', '75401ca2-6029-4013-9f42-35036cba7d52', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 21:30:10.072526+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3f707c9-d97c-4988-bb3e-56b52b3552f7', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 23:09:29.96562+00', ''),
	('00000000-0000-0000-0000-000000000000', '18bbda3e-5523-4ceb-a6b5-df146ab61831', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 23:09:29.96624+00', ''),
	('00000000-0000-0000-0000-000000000000', '046402a4-0156-41f5-8657-11a677e9dd11', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 23:44:52.677467+00', ''),
	('00000000-0000-0000-0000-000000000000', '0434b29b-f0dd-43bf-873b-45a8032b879d', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-15 23:44:52.679214+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c76e18b0-d355-4691-a1d0-532fe107d5a9', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 00:43:48.711914+00', ''),
	('00000000-0000-0000-0000-000000000000', '64c8b554-b3b1-4795-8dcf-16b6a8898072', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 00:43:48.712853+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8a4984f-bf4c-4011-aefa-cc48d76729e9', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 01:18:50.296366+00', ''),
	('00000000-0000-0000-0000-000000000000', '538409b9-16d2-4428-90aa-b04cbf65c88f', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 01:18:50.298233+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dab1f331-388a-474f-bbc7-15ec87610978', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 02:14:31.341475+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c634439c-13cc-4848-bf34-ba76ec8276db', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 02:14:31.342822+00', ''),
	('00000000-0000-0000-0000-000000000000', '85c5e9ee-f40c-42e2-a686-66a2c059fb14', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 03:05:41.258294+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aa20da0c-ab6a-4351-853f-aec162309fe9', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 03:05:41.259981+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b627ed5-481a-4ec0-b48b-e5ee5dd9b7f4', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 03:15:45.309009+00', ''),
	('00000000-0000-0000-0000-000000000000', '5035ad57-2130-4bd7-bc06-68b6e26bcbbf', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 03:15:45.310644+00', ''),
	('00000000-0000-0000-0000-000000000000', '6fd80926-c9cc-4bcd-aacb-3dfd8b595eea', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 04:06:11.304425+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aac1f115-5d34-4285-84a0-089777938f41', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 04:06:11.305813+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d861714-10b8-4a8e-bf2d-5702d909952a', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 04:51:51.2837+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c53f2673-7daf-4c0c-908f-82075dd4afc0', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 04:51:51.285215+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce6ac541-a873-413c-8915-98c6a90aa0ec', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 05:42:21.287974+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a75b4394-69fe-4dd7-9789-500eb3e36a96', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 05:42:21.288489+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf1b7c7a-95a5-4a20-986f-0221cdee7470', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 15:22:04.924794+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e5726dc-1bf9-48dc-9a4d-6182a2a93312', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 15:22:04.928932+00', ''),
	('00000000-0000-0000-0000-000000000000', '7fafe782-781c-4659-8b01-ac37e24c14b0', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 16:21:24.667665+00', ''),
	('00000000-0000-0000-0000-000000000000', '37d30319-0c7a-47c6-924f-f842f8a8f827', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-16 16:21:24.668565+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c141a5f8-fdfd-4faa-ac73-c78c96ac06a4', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 06:39:38.314984+00', ''),
	('00000000-0000-0000-0000-000000000000', '36d1ca85-e150-49e7-bcca-754ef35bceab', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 06:39:38.317203+00', ''),
	('00000000-0000-0000-0000-000000000000', '4c1e86d9-25df-4770-8771-876548cf057e', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 06:59:36.805704+00', ''),
	('00000000-0000-0000-0000-000000000000', '2799d430-1529-4145-af97-96d6cd79d015', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 06:59:36.806889+00', ''),
	('00000000-0000-0000-0000-000000000000', '1b3aaaa7-8bce-4d24-856a-3b2661121a9d', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 06:59:41.135416+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e41273e7-d5f2-4fa3-8c4a-e8e24d3fb040', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 06:59:41.136211+00', ''),
	('00000000-0000-0000-0000-000000000000', '43226a9a-d859-4177-9c1d-f9883f49b691', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 08:03:31.555508+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd06d149f-8378-496d-a175-092bfe9e9768', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 08:03:31.556476+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c67b63a-5e94-468a-b6b7-8228f0ee0612', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 09:00:17.67956+00', ''),
	('00000000-0000-0000-0000-000000000000', '2bfa6949-4bee-4e29-8e3e-9691fec21342', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 09:00:17.680714+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b2794abe-640c-402c-ab87-387b857f118d', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 09:43:55.072415+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd596c0eb-57ca-4df3-84d1-ff9fbffc8c55', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 09:43:55.073044+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bd3e3d92-9677-4efc-83de-86356bf1ef07', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 10:18:06.148294+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bca1cbac-7710-496b-9c5c-49dd13063ba9', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 10:18:06.15186+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c27e98da-c232-4fa9-b535-04a145e77d4e', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 11:01:17.802244+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bed2481d-872e-4993-bf18-d10cd1da03bd', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 11:01:17.803116+00', ''),
	('00000000-0000-0000-0000-000000000000', '6980459a-04af-415a-8ba5-e24318d0a245', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 11:52:37.905443+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c70f6c0b-2c10-4793-af62-24bf68948b41', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 11:52:37.907044+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d9a08a2-3082-45a9-a21b-e52f308e36f1', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 12:55:27.446059+00', ''),
	('00000000-0000-0000-0000-000000000000', '62ee15e9-e9ee-4493-bf8c-5bc2bcc4d192', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 12:55:27.447313+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8977c7e-2859-4ecd-bbd3-fe2599b5f98f', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 13:54:50.639749+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd193966d-5aa5-4482-91a0-54c379c29d08', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 13:54:50.641061+00', ''),
	('00000000-0000-0000-0000-000000000000', '61676725-bf61-484f-b2bb-5d2288b87f9f', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 14:48:30.640622+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b712e863-a12c-4907-9001-798bcf768e3a', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-17 14:48:30.642062+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e49a327-2412-4a4d-890c-30710bfe354d', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 06:21:33.765431+00', ''),
	('00000000-0000-0000-0000-000000000000', '74267393-a3ee-4d57-bb3a-f4f6fae7668f', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 06:21:33.766591+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fec809ef-3a0c-4626-877d-41f5ec378f2f', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 07:09:23.74015+00', ''),
	('00000000-0000-0000-0000-000000000000', '1722b97c-16d2-4ae4-b62d-e2c80163a516', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 07:09:23.741304+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b905632-4389-477c-9b81-2b61ef31eb38', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 07:56:53.801151+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e6800d9c-49ef-4f81-8dd7-92cea72119a0', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 07:56:53.802883+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ff1a65be-ca22-4d3a-8f8a-f10ca0fdb4aa', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 08:29:56.975212+00', ''),
	('00000000-0000-0000-0000-000000000000', '555717e4-ae34-4c2d-9081-2f5eb2ed707f', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 08:29:56.976511+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e9871462-772d-4b79-8b48-55ddaba7de62', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 09:05:43.736934+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7bb2685-a0d7-440a-b20e-f645f7f990b0', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 09:05:43.737952+00', ''),
	('00000000-0000-0000-0000-000000000000', '85811f22-fbfa-4bc4-ae1b-1241c8ed6de4', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 09:39:38.554454+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc379965-57be-47ae-892b-b4090eadc192', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 09:39:38.556244+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b77efe5a-7e6c-44b7-b6b1-ed26fd1f6c00', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 10:24:13.738546+00', ''),
	('00000000-0000-0000-0000-000000000000', '61c215a8-e1a9-4993-9131-d4d710a6e744', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 10:24:13.740332+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e459e5e-7192-40f8-8154-42b98949a758', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 11:23:33.740221+00', ''),
	('00000000-0000-0000-0000-000000000000', '72dce03e-2a0f-49f3-b1ad-0fcd2b5858fd', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 11:23:33.742257+00', ''),
	('00000000-0000-0000-0000-000000000000', '6e9ca47a-8380-457f-9676-322b6e935baa', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 12:22:53.766473+00', ''),
	('00000000-0000-0000-0000-000000000000', '61cd077b-5ce5-4144-b352-69c0a008f53d', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 12:22:53.768872+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6254ada-5a81-49f5-a68b-1957b812f482', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 14:51:09.004473+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc735b18-4dcc-4733-98d4-6d11412682ce', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 14:51:09.01351+00', ''),
	('00000000-0000-0000-0000-000000000000', '2927a465-f44b-46b5-8fa7-19b985624a47', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 15:50:31.885782+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fdd06748-9b67-4f6f-a004-16dec2cfa221', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 15:50:31.886759+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ac988ce-7e63-423d-894a-e5413ea12d5e', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 16:57:47.266541+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e966b361-6083-4ed0-ac5b-f2cf6fb20bf8', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 16:57:47.267421+00', ''),
	('00000000-0000-0000-0000-000000000000', 'db842f21-12d9-408d-8489-8baf074b177c', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 17:52:07.757759+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dca235f7-f831-4868-8402-99dfa5ad9517', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 17:52:07.759713+00', ''),
	('00000000-0000-0000-0000-000000000000', '497313fc-09a1-4bb5-95e2-ec1299fc2815', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 18:45:17.634639+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c3d2cd86-f15d-45f5-9c2e-b906297a05d1', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 18:45:17.635597+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6ea4736-9999-4546-9676-f6c05cd45389', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 19:53:28.636189+00', ''),
	('00000000-0000-0000-0000-000000000000', '9f21a6d9-33df-4870-8f69-15c96997ee38', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 19:53:28.637668+00', ''),
	('00000000-0000-0000-0000-000000000000', '4718bd94-d94e-4f86-9a16-d0f88508910c', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 20:42:47.692129+00', ''),
	('00000000-0000-0000-0000-000000000000', 'af20dd33-b796-4a5d-90e7-ca394145618a', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 20:42:47.693224+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d350efd-a901-4480-a497-be6860cce5f9', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 21:33:27.70126+00', ''),
	('00000000-0000-0000-0000-000000000000', '81e621f7-bc4d-4b6f-950a-ea7ce0155e8d', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 21:33:27.702999+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bee917a2-3435-45ba-911c-5d78989daa6a', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 22:25:37.712489+00', ''),
	('00000000-0000-0000-0000-000000000000', '3711fe1d-fba6-40fc-a893-91895399d458', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 22:25:37.713917+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b065376c-55e9-4673-b105-2548386a924f', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 23:19:47.79317+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e196ba2-3c31-4bbf-aaef-a1aa20ac9dc7', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-18 23:19:47.794087+00', ''),
	('00000000-0000-0000-0000-000000000000', '35142797-dc6b-45d8-bc9e-939a629a0c1c', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 00:10:07.719019+00', ''),
	('00000000-0000-0000-0000-000000000000', '73beeec7-7d25-4cf7-8cd0-521921ebdfe8', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 00:10:07.720907+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c4d45250-b4b6-499a-85a6-57f977820e02', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 01:24:02.973905+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2f65ef6-e214-4649-9470-c5bac9b4c035', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 01:24:02.974878+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d4b780a-4429-4e41-8a5e-5bde94bbf590', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 02:15:17.745213+00', ''),
	('00000000-0000-0000-0000-000000000000', '34fdec5a-ff46-40ff-b8f8-adc63d9fe870', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 02:15:17.746697+00', ''),
	('00000000-0000-0000-0000-000000000000', '27b75a22-736c-45bd-b0a8-dce689d7d5a4', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 02:58:19.686843+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0f0c0cc-0a80-481d-86b2-47e11f2cd634', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 02:58:19.687838+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba984032-5be9-4c6e-80a7-97fa3b139667', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 03:27:03.739667+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eeac876e-4ba4-4e29-b832-ba22cb99ae1d', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 03:27:03.740736+00', ''),
	('00000000-0000-0000-0000-000000000000', '5f50e3f9-910f-4aee-b7ec-5d18b00d13c7', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 04:19:17.704096+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb85a7bf-995f-4c9b-b691-c19c251b35b2', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 04:19:17.705429+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b946211e-1d25-4a4a-9df1-df5bd44ebfcc', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 05:13:17.745622+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b563d6e6-68dc-494b-93b4-5dca929442db', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 05:13:17.746594+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d281cdf-da5e-4a0e-94b4-8f66f33a8e9c', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 06:03:47.761687+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bd508259-5c0c-45fb-8122-519addfa6df9', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 06:03:47.762341+00', ''),
	('00000000-0000-0000-0000-000000000000', '4da7b411-67a5-4e4a-b2f1-cbd773df87c1', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 06:30:09.024239+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0924a88-27ae-4802-b437-7dee585f948e', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 06:30:09.025227+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d1de478-b466-4225-ad4d-2797f167bfcc', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 07:20:37.747287+00', ''),
	('00000000-0000-0000-0000-000000000000', '1dc13fe1-f6e1-447f-aabd-fd4e6eac3fc0', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 07:20:37.748433+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8088962-da14-40d2-952b-cf0513ea3a8f', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 08:09:37.739291+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e9444c97-87bd-415d-89cd-c51d1a8af926', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 08:09:37.740038+00', ''),
	('00000000-0000-0000-0000-000000000000', '74031a2f-0864-4935-aafe-ee30958bcf24', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 08:49:09.566791+00', ''),
	('00000000-0000-0000-0000-000000000000', '981f9988-7408-46e3-9062-172213d7540d', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 08:49:09.567821+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a8d634a7-5d7c-49ee-8a6c-d7a303a7dae3', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 09:32:57.678705+00', ''),
	('00000000-0000-0000-0000-000000000000', '5fb93b7e-6708-4d5d-ac81-c11d44bfc7f1', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 09:32:57.679711+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e232cd18-b74e-4c80-9ef7-01e40035e0eb', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 10:08:23.709679+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a86f25e4-076f-4a08-8120-2c65fd6049e0', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 10:08:23.710738+00', ''),
	('00000000-0000-0000-0000-000000000000', '28ff14d7-8f29-4e4d-a36d-35577f0ab5ea', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 11:07:47.662804+00', ''),
	('00000000-0000-0000-0000-000000000000', 'af793fa2-84cc-45af-95d8-fb7b331837ab', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 11:07:47.663586+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c8702b88-8b04-487c-b15c-16caaa5807df', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 12:07:07.693038+00', ''),
	('00000000-0000-0000-0000-000000000000', '29e625a3-2688-4d46-87cb-6c6fa642b84f', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 12:07:07.694495+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cbb64646-5737-4c11-83fb-9d5889d344e2', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 13:51:46.038727+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c86ae55b-ff35-49c1-8681-832ced059ef7', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-19 13:51:46.040586+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '81363697-5977-470a-bae8-d4575bc8de06', 'authenticated', 'authenticated', 'admin@scenarioshelf.com', '$2a$10$F6FLLUBwbZMLn3L71cFQV.jHg0YdHyldV.NxkHXRMnGBQAr6zKcZ2', '2024-06-08 13:12:48.693821+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-06-08 13:12:48.690704+00', '2024-06-08 13:12:48.693908+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'f05151be-42b1-4474-a829-38f1ebb4deb8', 'authenticated', 'authenticated', 'test_user@test.com', '$2a$10$nYileCsSr6ss1vXkV/5poeWri.gZBOZQf9.sLhwwF7E9kDcH3Dz/q', '2024-06-08 13:13:16.765443+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-06-08 13:13:16.762343+00', '2024-06-08 13:13:16.76555+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '65855918-d819-4f32-ad9a-b50de7654c30', 'authenticated', 'authenticated', 'test_user2@test.com', '$2a$10$9XTWDrE48V81M.mQZATZzeL.urj3jDAxX7Jiw3BdUVPq94A.KzjYy', '2024-06-08 13:14:13.721353+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-06-08 13:14:13.719403+00', '2024-06-08 13:14:13.721463+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', 'authenticated', 'authenticated', 'micady.dev@gmail.com', '$2a$10$Y.cbCYFfRLWdniqv9CxuquB6EkI906xJ4iJZ0lG76K8lA39GsbfwG', '2024-06-08 13:11:13.315418+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-06-10 02:17:10.658748+00', '{"provider": "email", "providers": ["email"]}', '{"username": "micady", "avatar_url": "http://127.0.0.1:54321/storage/v1/object/public/user_avatars/84f5fc4c-529c-40e8-85fb-9713868cbcfc/avatar.jpeg"}', NULL, '2024-06-08 13:11:13.305511+00', '2024-06-19 13:51:46.043408+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('84f5fc4c-529c-40e8-85fb-9713868cbcfc', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '{"sub": "84f5fc4c-529c-40e8-85fb-9713868cbcfc", "email": "micady.dev@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-06-08 13:11:13.310707+00', '2024-06-08 13:11:13.310736+00', '2024-06-08 13:11:13.310736+00', 'd78195a3-ee33-41f5-8928-7792f61078fc'),
	('81363697-5977-470a-bae8-d4575bc8de06', '81363697-5977-470a-bae8-d4575bc8de06', '{"sub": "81363697-5977-470a-bae8-d4575bc8de06", "email": "admin@scenarioshelf.com", "email_verified": false, "phone_verified": false}', 'email', '2024-06-08 13:12:48.692366+00', '2024-06-08 13:12:48.692395+00', '2024-06-08 13:12:48.692395+00', '24612f09-be8c-4565-89f2-c9babd579c7a'),
	('f05151be-42b1-4474-a829-38f1ebb4deb8', 'f05151be-42b1-4474-a829-38f1ebb4deb8', '{"sub": "f05151be-42b1-4474-a829-38f1ebb4deb8", "email": "test_user@test.com", "email_verified": false, "phone_verified": false}', 'email', '2024-06-08 13:13:16.763242+00', '2024-06-08 13:13:16.763262+00', '2024-06-08 13:13:16.763262+00', '8a88322b-145e-42de-a972-bab59ed722e3'),
	('65855918-d819-4f32-ad9a-b50de7654c30', '65855918-d819-4f32-ad9a-b50de7654c30', '{"sub": "65855918-d819-4f32-ad9a-b50de7654c30", "email": "test_user2@test.com", "email_verified": false, "phone_verified": false}', 'email', '2024-06-08 13:14:13.720276+00', '2024-06-08 13:14:13.720321+00', '2024-06-08 13:14:13.720321+00', '526f1f0f-701b-4586-89f8-d134fa43e89f');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('ac90f191-7b49-4dae-b62e-ea7f495b1079', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-09 13:23:34.467772+00', '2024-06-09 15:42:38.604936+00', NULL, 'aal1', NULL, '2024-06-09 15:42:38.60483', 'Dart/3.4 (dart:io)', '192.168.65.1', NULL),
	('2734b414-7720-47b6-90a6-a5981f4367fd', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-10 02:17:10.658805+00', '2024-06-19 13:51:46.045526+00', NULL, 'aal1', NULL, '2024-06-19 13:51:46.04546', 'Dart/3.4 (dart:io)', '192.168.65.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('ac90f191-7b49-4dae-b62e-ea7f495b1079', '2024-06-09 13:23:34.473218+00', '2024-06-09 13:23:34.473218+00', 'password', '31d23116-ff8a-4b33-99c6-2e9d225fbcf3'),
	('2734b414-7720-47b6-90a6-a5981f4367fd', '2024-06-10 02:17:10.660788+00', '2024-06-10 02:17:10.660788+00', 'password', '9a70769d-5917-49ba-9ed4-b8d29429f7be');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 1, 'mKqmzRykQlulDRr73yFP7w', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-09 13:23:34.470409+00', '2024-06-09 13:48:08.055948+00', NULL, 'ac90f191-7b49-4dae-b62e-ea7f495b1079'),
	('00000000-0000-0000-0000-000000000000', 2, '6MQdpBld2IwJGNPXF8cRAg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-09 13:48:08.058471+00', '2024-06-09 13:52:47.534778+00', 'mKqmzRykQlulDRr73yFP7w', 'ac90f191-7b49-4dae-b62e-ea7f495b1079'),
	('00000000-0000-0000-0000-000000000000', 3, 'XvPLb6oUYZW2-uC4ko8blw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-09 13:52:47.535544+00', '2024-06-09 13:54:10.689115+00', '6MQdpBld2IwJGNPXF8cRAg', 'ac90f191-7b49-4dae-b62e-ea7f495b1079'),
	('00000000-0000-0000-0000-000000000000', 4, '-skb4dnvEUvQWvr27amYIg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-09 13:54:10.689606+00', '2024-06-09 13:56:49.894027+00', 'XvPLb6oUYZW2-uC4ko8blw', 'ac90f191-7b49-4dae-b62e-ea7f495b1079'),
	('00000000-0000-0000-0000-000000000000', 5, 'PvgQl3b0RyyQsfZvlBXYAQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-09 13:56:49.89462+00', '2024-06-09 15:42:38.600568+00', '-skb4dnvEUvQWvr27amYIg', 'ac90f191-7b49-4dae-b62e-ea7f495b1079'),
	('00000000-0000-0000-0000-000000000000', 6, 'sIzjQ0XP7cNXIO3YrzoXCA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', false, '2024-06-09 15:42:38.60133+00', '2024-06-09 15:42:38.60133+00', 'PvgQl3b0RyyQsfZvlBXYAQ', 'ac90f191-7b49-4dae-b62e-ea7f495b1079'),
	('00000000-0000-0000-0000-000000000000', 7, '1tqDdiibgmxr13MjAWBJjQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-10 02:17:10.65976+00', '2024-06-10 03:16:36.220516+00', NULL, '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 8, 'T46tjA_FGucth1MLQ6XUaw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-10 03:16:36.221255+00', '2024-06-10 04:15:56.2867+00', '1tqDdiibgmxr13MjAWBJjQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 9, 'fu4_KbwfwgLAF5SHZHP6Jw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-10 04:15:56.28715+00', '2024-06-10 05:15:16.214914+00', 'T46tjA_FGucth1MLQ6XUaw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 10, 'S9yLE0HjODQoduq5m8_xFQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-10 05:15:16.215309+00', '2024-06-10 06:14:26.236097+00', 'fu4_KbwfwgLAF5SHZHP6Jw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 11, '15C1zWv3ttldWbcOuoLQDA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-10 06:14:26.23763+00', '2024-06-11 11:52:31.051744+00', 'S9yLE0HjODQoduq5m8_xFQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 12, 'AWcRXCOdG-JbcpZhEX3Lvg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-11 11:52:31.053247+00', '2024-06-11 12:52:00.6185+00', '15C1zWv3ttldWbcOuoLQDA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 13, 'SUVCg83oZ8LzPoSe_GkaBg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-11 12:52:00.619316+00', '2024-06-11 13:40:20.666075+00', 'AWcRXCOdG-JbcpZhEX3Lvg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 14, 'TH_MatX8jW4HtOx1jGJXpw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-11 13:40:20.667081+00', '2024-06-11 14:28:28.785614+00', 'SUVCg83oZ8LzPoSe_GkaBg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 15, 'VHfXcA5tjfS2xXJqK8UqxQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-11 14:28:28.786243+00', '2024-06-12 13:52:38.906849+00', 'TH_MatX8jW4HtOx1jGJXpw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 16, 'UqCEnvxkOkhUN30xr4y01A', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-12 13:52:38.907359+00', '2024-06-13 11:46:01.220265+00', 'VHfXcA5tjfS2xXJqK8UqxQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 17, 'IZ2xEReL_PwW1Nm1SGkrhg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-13 11:46:01.221733+00', '2024-06-13 14:51:50.924157+00', 'UqCEnvxkOkhUN30xr4y01A', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 18, 'a9Fzu6JR8CaQSWaxdXY_Vw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-13 14:51:50.925246+00', '2024-06-13 15:51:18.751279+00', 'IZ2xEReL_PwW1Nm1SGkrhg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 19, '7wOgR_Kcj8VQiraTVzCdSw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-13 15:51:18.752082+00', '2024-06-13 16:50:38.734461+00', 'a9Fzu6JR8CaQSWaxdXY_Vw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 20, '79bIzv4uL0v9sOwGXjzCMQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-13 16:50:38.735671+00', '2024-06-13 17:44:58.668375+00', '7wOgR_Kcj8VQiraTVzCdSw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 21, '2_rQkXe9yzHx_AQQgmltTg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-13 17:44:58.669161+00', '2024-06-13 18:39:08.68411+00', '79bIzv4uL0v9sOwGXjzCMQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 22, 'kSg1WQ39Brk1ecd1DmmDkQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-13 18:39:08.68491+00', '2024-06-13 19:33:18.75085+00', '2_rQkXe9yzHx_AQQgmltTg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 23, 'szEQL3kI9MoTKvyanp9hSQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-13 19:33:18.751869+00', '2024-06-13 20:29:58.733615+00', 'kSg1WQ39Brk1ecd1DmmDkQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 24, '8RzgAAi_mSxGpSgoN4hDNA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-13 20:29:58.734118+00', '2024-06-13 21:26:28.732633+00', 'szEQL3kI9MoTKvyanp9hSQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 25, 'i_7kat4E44G3tswwvsYJYg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-13 21:26:28.733677+00', '2024-06-13 22:20:08.739289+00', '8RzgAAi_mSxGpSgoN4hDNA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 26, 'kpjynBjnOxSQd2Kudlr5pQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-13 22:20:08.740594+00', '2024-06-13 23:10:48.658528+00', 'i_7kat4E44G3tswwvsYJYg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 27, 'FLK6MbaEDmtGft04g6RPzA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-13 23:10:48.659403+00', '2024-06-14 00:20:36.63234+00', 'kpjynBjnOxSQd2Kudlr5pQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 28, 'TIYE-xozNKroYI2Wr8Vu9g', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 00:20:36.63314+00', '2024-06-14 01:35:04.271389+00', 'FLK6MbaEDmtGft04g6RPzA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 29, 'UzyE7hkbXmmMC_I8-knltQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 01:35:04.272885+00', '2024-06-14 02:18:08.687454+00', 'TIYE-xozNKroYI2Wr8Vu9g', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 30, 'yHCjuC7FYvrC-c08dzLicQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 02:18:08.688224+00', '2024-06-14 03:03:48.716334+00', 'UzyE7hkbXmmMC_I8-knltQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 31, 'LHKS4RiwY1A36wYNai1F7g', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 03:03:48.716883+00', '2024-06-14 03:20:39.990576+00', 'yHCjuC7FYvrC-c08dzLicQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 32, 'MDMOnBkgtbdlYdmzPT2pIg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 03:20:39.991158+00', '2024-06-14 04:04:58.623729+00', 'LHKS4RiwY1A36wYNai1F7g', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 33, 'VnHbp2B0slUDH-_OR77NfQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 04:04:58.624319+00', '2024-06-14 04:05:06.358897+00', 'MDMOnBkgtbdlYdmzPT2pIg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 34, '5ttHKp213gXz0J82XhbuTA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 04:05:06.359404+00', '2024-06-14 04:05:10.681963+00', 'VnHbp2B0slUDH-_OR77NfQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 35, 'ktvIyeOum4N6WpmYdPWtTQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 04:05:10.682323+00', '2024-06-14 05:05:18.564124+00', '5ttHKp213gXz0J82XhbuTA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 36, 'WUMd3RZ9msucRVJZt6hkVQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 05:05:18.564467+00', '2024-06-14 05:06:08.025497+00', 'ktvIyeOum4N6WpmYdPWtTQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 37, 'TM6_bZh5zsyZYJHLCRUtnA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 05:06:08.029222+00', '2024-06-14 05:06:11.730616+00', 'WUMd3RZ9msucRVJZt6hkVQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 38, 'k1Umy30vQDNmTAT8rJl43A', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 05:06:11.730998+00', '2024-06-14 06:06:18.508697+00', 'TM6_bZh5zsyZYJHLCRUtnA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 39, 'zT-7HX_RMYNpmlY4wlkzGg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 06:06:18.508972+00', '2024-06-14 06:41:25.726154+00', 'k1Umy30vQDNmTAT8rJl43A', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 40, 'tRBiz_nJnCch0ygwb5pO5w', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 06:41:25.727027+00', '2024-06-14 07:37:44.654377+00', 'zT-7HX_RMYNpmlY4wlkzGg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 41, 'zCKZ0FUjZp7YGTwyVjAKvA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 07:37:44.654881+00', '2024-06-14 08:25:47.625751+00', 'tRBiz_nJnCch0ygwb5pO5w', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 42, 'eGUuqimtpwub6-XuyCT6UA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 08:25:47.626776+00', '2024-06-14 08:47:38.089237+00', 'zCKZ0FUjZp7YGTwyVjAKvA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 43, 'KHdQEpqI6zaeHXOgXuOZIw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 08:47:38.090606+00', '2024-06-14 09:53:28.167405+00', 'eGUuqimtpwub6-XuyCT6UA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 44, '2P6iV-NhZ60DNSOzvuXwRQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 09:53:28.167528+00', '2024-06-14 10:50:48.646073+00', 'KHdQEpqI6zaeHXOgXuOZIw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 45, '9ukWi2VAIfHrlowxhWEpBg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 10:50:48.646866+00', '2024-06-14 11:50:08.695708+00', '2P6iV-NhZ60DNSOzvuXwRQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 78, 'Pm8R5gTlc1RCjwmedA5fFA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 10:02:31.114156+00', '2024-06-15 10:52:01.463799+00', 'n6mi-THuWixaUndyzDK0Sw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 46, '8rmvVFOv4okEKecuZNiEXg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 11:50:08.696571+00', '2024-06-14 11:50:23.440537+00', '9ukWi2VAIfHrlowxhWEpBg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 79, 'l7o_Tu7SLBrhcaF590d0hg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 10:52:01.464655+00', '2024-06-15 11:50:51.498492+00', 'Pm8R5gTlc1RCjwmedA5fFA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 47, 'wKaIJdWf5h9l8kA8uoeDAQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 11:50:23.440839+00', '2024-06-14 12:50:28.698389+00', '8rmvVFOv4okEKecuZNiEXg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 48, 'MeBq1g5CsYbrUG5yvXIBag', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 12:50:28.698981+00', '2024-06-14 13:40:48.684472+00', 'wKaIJdWf5h9l8kA8uoeDAQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 80, 'nwHOviKbWkorTLbUovvr3g', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 11:50:51.504704+00', '2024-06-15 12:41:48.961182+00', 'l7o_Tu7SLBrhcaF590d0hg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 49, 'TZ_sG0PU5Z6QqeboVn2lVQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 13:40:48.685104+00', '2024-06-14 14:27:58.619766+00', 'MeBq1g5CsYbrUG5yvXIBag', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 50, 'M5BHmphPMoMqxlquenusyg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 14:27:58.620175+00', '2024-06-14 15:21:44.942174+00', 'TZ_sG0PU5Z6QqeboVn2lVQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 81, 'nGTCRYoA_uU20glrhc8TFw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 12:41:48.962189+00', '2024-06-15 13:47:35.149058+00', 'nwHOviKbWkorTLbUovvr3g', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 51, 'mBVE0PcNNKG5lD9_lwXUNg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 15:21:44.942894+00', '2024-06-14 16:11:16.619395+00', 'M5BHmphPMoMqxlquenusyg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 52, 'PGJhZ7ACfOf7bPftTVrShw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 16:11:16.619944+00', '2024-06-14 16:55:18.499519+00', 'mBVE0PcNNKG5lD9_lwXUNg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 82, 'XnVq26-VpXwkk0BFwz-GQg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 13:47:35.150778+00', '2024-06-15 14:15:45.556117+00', 'nGTCRYoA_uU20glrhc8TFw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 53, 'ptDT-4fHipbHvZUI9WLXWw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 16:55:18.500431+00', '2024-06-14 17:45:38.502195+00', 'PGJhZ7ACfOf7bPftTVrShw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 54, 'YzjtjiDQCBrRy7N1AaaEqQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 17:45:38.50316+00', '2024-06-14 17:56:22.864347+00', 'ptDT-4fHipbHvZUI9WLXWw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 83, 'H7xsmNCXJ1IhKrvm5MgUwg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 14:15:45.55672+00', '2024-06-15 15:15:54.034041+00', 'XnVq26-VpXwkk0BFwz-GQg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 55, 'nqeGnqmAcakwYrrStsktoQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 17:56:22.865284+00', '2024-06-14 19:04:15.146671+00', 'YzjtjiDQCBrRy7N1AaaEqQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 56, 'XIHhuTNpCS51ynytLUjQbQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 19:04:15.147085+00', '2024-06-14 19:54:48.559418+00', 'nqeGnqmAcakwYrrStsktoQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 84, 'cnB_pQsgeyjeyOoxaddzGQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 15:15:54.03452+00', '2024-06-15 16:09:46.40151+00', 'H7xsmNCXJ1IhKrvm5MgUwg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 57, '-m4SmlcZnDMy2rvar7lKfQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 19:54:48.560516+00', '2024-06-14 19:55:09.609634+00', 'XIHhuTNpCS51ynytLUjQbQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 58, 'cvo4kUQI26-55fGMsU6JEQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 19:55:09.610222+00', '2024-06-14 21:17:18.443235+00', '-m4SmlcZnDMy2rvar7lKfQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 85, 'pM6mcKKHBAMVTgiWX5FvvQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 16:09:46.402554+00', '2024-06-15 17:05:41.424685+00', 'cnB_pQsgeyjeyOoxaddzGQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 59, 'eqln3Rb9-vUHng7VHVL5LA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 21:17:18.443729+00', '2024-06-14 22:09:18.474733+00', 'cvo4kUQI26-55fGMsU6JEQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 60, 'V2DIVbnktEhA0em-8UkX0w', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 22:09:18.475822+00', '2024-06-14 22:44:30.901609+00', 'eqln3Rb9-vUHng7VHVL5LA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 86, 'WNSyzU1iC2pEug9a0MWMtw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 17:05:41.425462+00', '2024-06-15 17:52:51.43682+00', 'pM6mcKKHBAMVTgiWX5FvvQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 61, 'm0fAFNc-Anjr91t1JARcXw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 22:44:30.902115+00', '2024-06-14 23:32:30.550942+00', 'V2DIVbnktEhA0em-8UkX0w', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 62, 'EkTFBBa5Cp0nPE9BjM2bTg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-14 23:32:30.551511+00', '2024-06-15 00:10:40.177158+00', 'm0fAFNc-Anjr91t1JARcXw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 87, 'eDaEJo5VJxXI72TZnYzPZQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 17:52:51.43764+00', '2024-06-15 18:42:31.45691+00', 'WNSyzU1iC2pEug9a0MWMtw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 63, 'OlBGNQ9djOlyNglVWHTLFA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 00:10:40.177689+00', '2024-06-15 01:11:31.445975+00', 'EkTFBBa5Cp0nPE9BjM2bTg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 64, 'R7SqJnbPK5cP6XL2qUl8fA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 01:11:31.447761+00', '2024-06-15 01:54:48.504874+00', 'OlBGNQ9djOlyNglVWHTLFA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 88, 'DUf3t_9M2enhccOj-TA51g', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 18:42:31.457851+00', '2024-06-15 19:34:51.427983+00', 'eDaEJo5VJxXI72TZnYzPZQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 65, 'yReU1LrE7hYVv00-vEgPEg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 01:54:48.506076+00', '2024-06-15 02:13:34.587299+00', 'R7SqJnbPK5cP6XL2qUl8fA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 66, 'X9w9O1QGcbUslPz4MIMd0w', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 02:13:34.588534+00', '2024-06-15 02:55:54.571582+00', 'yReU1LrE7hYVv00-vEgPEg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 89, 'hGYxLPVfcLu8cndzSyRBOg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 19:34:51.429009+00', '2024-06-15 19:52:57.221894+00', 'DUf3t_9M2enhccOj-TA51g', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 67, '1a_EEmm28cfvArU4HC2x0g', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 02:55:54.572154+00', '2024-06-15 02:56:00.277465+00', 'X9w9O1QGcbUslPz4MIMd0w', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 68, 'zWBGfBOCATyQJn2WJHBt1g', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 02:56:00.278363+00', '2024-06-15 02:56:01.686272+00', '1a_EEmm28cfvArU4HC2x0g', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 90, 'sVTDI-joeiVe2us2s64H5g', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 19:52:57.222702+00', '2024-06-15 19:53:02.859519+00', 'hGYxLPVfcLu8cndzSyRBOg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 69, 'I4sHwV563xXqkojbQyaCIA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 02:56:01.686833+00', '2024-06-15 03:56:08.526775+00', 'zWBGfBOCATyQJn2WJHBt1g', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 70, 'RWlXiWOJez2uQFb2SrnOMw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 03:56:08.527525+00', '2024-06-15 04:18:22.592964+00', 'I4sHwV563xXqkojbQyaCIA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 91, 'zVJpi8QhcD72Fai5Hfd2wA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 19:53:02.85975+00', '2024-06-15 19:53:08.190781+00', 'sVTDI-joeiVe2us2s64H5g', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 71, '9ocqlUEagTPfwDK1R-XIpA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 04:18:22.593877+00', '2024-06-15 04:57:38.521172+00', 'RWlXiWOJez2uQFb2SrnOMw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 72, 'CaPP7bQAlLWYG5ei-9mkvQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 04:57:38.522179+00', '2024-06-15 05:56:58.443711+00', '9ocqlUEagTPfwDK1R-XIpA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 73, 'As59SsCEpegCsV3gMsJMUQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 05:56:58.444792+00', '2024-06-15 06:37:27.848427+00', 'CaPP7bQAlLWYG5ei-9mkvQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 74, 'DFON6lxJ9a3M6c4v_q28XA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 06:37:27.849906+00', '2024-06-15 07:12:37.391448+00', 'As59SsCEpegCsV3gMsJMUQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 75, 'dpMPTDHO-2nFLcJFwABxOw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 07:12:37.392552+00', '2024-06-15 08:11:57.361344+00', 'DFON6lxJ9a3M6c4v_q28XA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 76, 'OpMbaUVUYtdS1eb8MPvhgQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 08:11:57.362832+00', '2024-06-15 09:11:21.526411+00', 'dpMPTDHO-2nFLcJFwABxOw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 77, 'n6mi-THuWixaUndyzDK0Sw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 09:11:21.528065+00', '2024-06-15 10:02:31.113518+00', 'OpMbaUVUYtdS1eb8MPvhgQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 154, '80WI4l6wQ7KHEGpmeV2LiA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 10:08:23.712116+00', '2024-06-19 11:07:47.663789+00', 'uhgYZv10MuyfW9VBq5rhVA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 92, 'ZU94sOx5WNAEFcgnTz7Eyw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 19:53:08.191063+00', '2024-06-15 19:53:15.572097+00', 'zVJpi8QhcD72Fai5Hfd2wA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 93, 'qVYi-Acj7vICCfd9cDJAxA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 19:53:15.572652+00', '2024-06-15 21:10:01.368632+00', 'ZU94sOx5WNAEFcgnTz7Eyw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 94, 'Uzg8fyC6e6eTk2ShamqEhA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 21:10:01.369055+00', '2024-06-15 21:29:55.750837+00', 'qVYi-Acj7vICCfd9cDJAxA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 95, 'npZyEIGwpGi-cih701R3pQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 21:29:55.751423+00', '2024-06-15 21:30:09.381492+00', 'Uzg8fyC6e6eTk2ShamqEhA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 96, 'yb-fsL0Dov5OQciuSQ60rw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 21:30:09.381852+00', '2024-06-15 21:30:10.073+00', 'npZyEIGwpGi-cih701R3pQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 97, 'qSiRP0UnNe0qTd21wBvnKA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 21:30:10.073285+00', '2024-06-15 23:09:29.967045+00', 'yb-fsL0Dov5OQciuSQ60rw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 98, 'ws1AHXwcvj5BBTa7JAFp0A', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 23:09:29.96744+00', '2024-06-15 23:44:52.679672+00', 'qSiRP0UnNe0qTd21wBvnKA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 99, '1zQtXpAVLi0PUOpwH3-cbg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-15 23:44:52.68148+00', '2024-06-16 00:43:48.713285+00', 'ws1AHXwcvj5BBTa7JAFp0A', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 100, 'z2PkXEjsOn6dndhRjwnrtQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-16 00:43:48.713933+00', '2024-06-16 01:18:50.299066+00', '1zQtXpAVLi0PUOpwH3-cbg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 101, 'GoDThSA_d0xOjEXQgKzS1Q', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-16 01:18:50.300053+00', '2024-06-16 02:14:31.343307+00', 'z2PkXEjsOn6dndhRjwnrtQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 102, '-LaYeNXyD1cbsA51VmGxRg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-16 02:14:31.344231+00', '2024-06-16 03:05:41.260623+00', 'GoDThSA_d0xOjEXQgKzS1Q', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 103, 'rmivzqWMfHHbHQhH_rcwMQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-16 03:05:41.261449+00', '2024-06-16 03:15:45.310906+00', '-LaYeNXyD1cbsA51VmGxRg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 104, 'tLBJeu0WIrhbXMCf1gRM-w', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-16 03:15:45.311331+00', '2024-06-16 04:06:11.306395+00', 'rmivzqWMfHHbHQhH_rcwMQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 105, 'xcpEI2fkamD_G9yyttzfDQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-16 04:06:11.307229+00', '2024-06-16 04:51:51.28605+00', 'tLBJeu0WIrhbXMCf1gRM-w', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 106, 'MqTb2YkJM4hNEtVA9hj2uA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-16 04:51:51.287175+00', '2024-06-16 05:42:21.288723+00', 'xcpEI2fkamD_G9yyttzfDQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 107, 'NuFNsgOuCFKtj0yZb8qFfg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-16 05:42:21.289085+00', '2024-06-16 15:22:04.92927+00', 'MqTb2YkJM4hNEtVA9hj2uA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 108, 'Gr7eSvaKC0Nq5eNTmJakMQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-16 15:22:04.931623+00', '2024-06-16 16:21:24.669213+00', 'NuFNsgOuCFKtj0yZb8qFfg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 109, '_7943GM99Qf7ZbLh9sXIdA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-16 16:21:24.670495+00', '2024-06-17 06:39:38.317857+00', 'Gr7eSvaKC0Nq5eNTmJakMQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 110, 'p_skO2cNpSKpbjl9gtUGnQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-17 06:39:38.319615+00', '2024-06-17 06:59:36.807304+00', '_7943GM99Qf7ZbLh9sXIdA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 111, 'S3SWZQEGiKx_In4CdJ2ohA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-17 06:59:36.808268+00', '2024-06-17 06:59:41.136807+00', 'p_skO2cNpSKpbjl9gtUGnQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 112, 'H4XSUmGPrFC4eIWCBHPh_g', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-17 06:59:41.137186+00', '2024-06-17 08:03:31.557806+00', 'S3SWZQEGiKx_In4CdJ2ohA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 113, 'DcllTYPr4ipuICuqv6tTeg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-17 08:03:31.55829+00', '2024-06-17 09:00:17.681173+00', 'H4XSUmGPrFC4eIWCBHPh_g', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 114, 'pY8SKIOuNNIU_3sy-2R2ug', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-17 09:00:17.683503+00', '2024-06-17 09:43:55.073355+00', 'DcllTYPr4ipuICuqv6tTeg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 115, 'uPq56UC-vytAvEqhT8zLuQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-17 09:43:55.073689+00', '2024-06-17 10:18:06.152364+00', 'pY8SKIOuNNIU_3sy-2R2ug', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 116, 'kY_4ZU9w9OP_WdoF7FuS6w', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-17 10:18:06.153766+00', '2024-06-17 11:01:17.803555+00', 'uPq56UC-vytAvEqhT8zLuQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 117, 'TKZa8lQudEj8FtiYGgmp-g', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-17 11:01:17.803959+00', '2024-06-17 11:52:37.907307+00', 'kY_4ZU9w9OP_WdoF7FuS6w', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 118, 'QJU9Uu4xwh2OFDUUxqCT8w', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-17 11:52:37.907788+00', '2024-06-17 12:55:27.44786+00', 'TKZa8lQudEj8FtiYGgmp-g', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 119, 'vBCdFHXvWOJaEJ39GsaOgA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-17 12:55:27.448816+00', '2024-06-17 13:54:50.642234+00', 'QJU9Uu4xwh2OFDUUxqCT8w', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 120, 'AIkxsXd7TDMH9ZUB8IDfbw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-17 13:54:50.643699+00', '2024-06-17 14:48:30.642523+00', 'vBCdFHXvWOJaEJ39GsaOgA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 121, 'u-AY0CX_uKKHKokixWyZ2Q', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-17 14:48:30.643648+00', '2024-06-18 06:21:33.766933+00', 'AIkxsXd7TDMH9ZUB8IDfbw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 122, 'Gpcvmf6QNGfmxwfVuZyj9g', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 06:21:33.768074+00', '2024-06-18 07:09:23.741505+00', 'u-AY0CX_uKKHKokixWyZ2Q', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 123, '8nJUh2vQrDhtdySQDOhXkw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 07:09:23.742221+00', '2024-06-18 07:56:53.803364+00', 'Gpcvmf6QNGfmxwfVuZyj9g', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 124, 'UkiTbkVgmkZ6vE26kA088Q', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 07:56:53.804376+00', '2024-06-18 08:29:56.977286+00', '8nJUh2vQrDhtdySQDOhXkw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 125, 'dozl1MyIxYEaHGQXKdALEA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 08:29:56.978192+00', '2024-06-18 09:05:43.738503+00', 'UkiTbkVgmkZ6vE26kA088Q', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 126, '28x6vMV1sqRmZaL4KEgk4A', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 09:05:43.739096+00', '2024-06-18 09:39:38.556662+00', 'dozl1MyIxYEaHGQXKdALEA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 127, 'z3aJfuwKA9LnL-7RI_pdjg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 09:39:38.557936+00', '2024-06-18 10:24:13.74116+00', '28x6vMV1sqRmZaL4KEgk4A', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 128, 'dJze82VUo5is7phrHnkScg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 10:24:13.742151+00', '2024-06-18 11:23:33.742609+00', 'z3aJfuwKA9LnL-7RI_pdjg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 129, 'J8ISLDrX7TFrgP7LhpmrRQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 11:23:33.743364+00', '2024-06-18 12:22:53.769721+00', 'dJze82VUo5is7phrHnkScg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 130, 'tA7KUkVdHzkcndhhV3dD_w', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 12:22:53.771198+00', '2024-06-18 14:51:09.015382+00', 'J8ISLDrX7TFrgP7LhpmrRQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 131, 'QIEr_LLhiyRYf_9THiELwg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 14:51:09.019164+00', '2024-06-18 15:50:31.886964+00', 'tA7KUkVdHzkcndhhV3dD_w', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 132, 'xUV9DVUZ1Ln3mgc7hcseSA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 15:50:31.887881+00', '2024-06-18 16:57:47.267716+00', 'QIEr_LLhiyRYf_9THiELwg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 133, 'RRnvG-EMU-5xNi1wHMKOCg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 16:57:47.268324+00', '2024-06-18 17:52:07.760774+00', 'xUV9DVUZ1Ln3mgc7hcseSA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 134, 'ALjWs1k7vvlb6WiwrLG4Yw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 17:52:07.762657+00', '2024-06-18 18:45:17.636318+00', 'RRnvG-EMU-5xNi1wHMKOCg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 135, 'vgvum_jUUtsuQ2ATH47FYw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 18:45:17.637583+00', '2024-06-18 19:53:28.638135+00', 'ALjWs1k7vvlb6WiwrLG4Yw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 136, 'xfqcWaUgGZ7cpePkRje0vg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 19:53:28.639482+00', '2024-06-18 20:42:47.6937+00', 'vgvum_jUUtsuQ2ATH47FYw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 153, 'uhgYZv10MuyfW9VBq5rhVA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 09:32:57.680921+00', '2024-06-19 10:08:23.711686+00', 'lZtM3MdZQQH9m1qYQXVpPQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 137, 'XFMR1-2CYk_0qqdkVsjnaQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 20:42:47.695689+00', '2024-06-18 21:33:27.703449+00', 'xfqcWaUgGZ7cpePkRje0vg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 138, 'CwnqKA_339aESbBiZBHA6g', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 21:33:27.704734+00', '2024-06-18 22:25:37.714353+00', 'XFMR1-2CYk_0qqdkVsjnaQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 155, 'qbQpc5Vm6vUoXRgSp-e6kw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 11:07:47.664169+00', '2024-06-19 12:07:07.69488+00', '80WI4l6wQ7KHEGpmeV2LiA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 139, 'iz1kapjpRCBOK99kcflEvA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 22:25:37.715701+00', '2024-06-18 23:19:47.794343+00', 'CwnqKA_339aESbBiZBHA6g', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 140, 'iuWZ0VyvpBieyfQfbCUXXA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-18 23:19:47.795273+00', '2024-06-19 00:10:07.72147+00', 'iz1kapjpRCBOK99kcflEvA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 156, 'nydl7OaVmZp5TPdl-5jQVQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 12:07:07.695715+00', '2024-06-19 13:51:46.040908+00', 'qbQpc5Vm6vUoXRgSp-e6kw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 141, 'cYWoEMHMzNZ7hpx5JbfWlQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 00:10:07.722569+00', '2024-06-19 01:24:02.975394+00', 'iuWZ0VyvpBieyfQfbCUXXA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 157, 'lVI7hKUq_6F5Nzi4H20jtw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', false, '2024-06-19 13:51:46.042175+00', '2024-06-19 13:51:46.042175+00', 'nydl7OaVmZp5TPdl-5jQVQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 142, '5me4TR_5tAXE-yol8x8NsA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 01:24:02.976064+00', '2024-06-19 02:15:17.747386+00', 'cYWoEMHMzNZ7hpx5JbfWlQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 143, 'osb5KDy1CEXo096aOJ8GyQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 02:15:17.748525+00', '2024-06-19 02:58:19.688889+00', '5me4TR_5tAXE-yol8x8NsA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 144, '2ecKvT94qEKhHMtO9bfeXw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 02:58:19.689617+00', '2024-06-19 03:27:03.741205+00', 'osb5KDy1CEXo096aOJ8GyQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 145, 'wRr24oT2X0T9FH77EVS_hQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 03:27:03.741769+00', '2024-06-19 04:19:17.706109+00', '2ecKvT94qEKhHMtO9bfeXw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 146, 'OyJW-zEp3qpQZ4nUoScF9A', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 04:19:17.707585+00', '2024-06-19 05:13:17.747086+00', 'wRr24oT2X0T9FH77EVS_hQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 147, 'hYY4p_FC5XvaWbZaWJRSaA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 05:13:17.747603+00', '2024-06-19 06:03:47.762552+00', 'OyJW-zEp3qpQZ4nUoScF9A', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 148, 'n0_cdRwWAE4_h0MAsxH-XA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 06:03:47.762995+00', '2024-06-19 06:30:09.025744+00', 'hYY4p_FC5XvaWbZaWJRSaA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 149, '2-pBTC9EwPjAnNosK0Du4Q', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 06:30:09.026837+00', '2024-06-19 07:20:37.748842+00', 'n0_cdRwWAE4_h0MAsxH-XA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 150, 'DdJj0l_DdRtS8_DwmMzsvw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 07:20:37.749557+00', '2024-06-19 08:09:37.740447+00', '2-pBTC9EwPjAnNosK0Du4Q', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 151, 'fKe-WbPZlK_Gl77kNrDvgg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 08:09:37.74091+00', '2024-06-19 08:49:09.568253+00', 'DdJj0l_DdRtS8_DwmMzsvw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 152, 'lZtM3MdZQQH9m1qYQXVpPQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-19 08:49:09.569093+00', '2024-06-19 09:32:57.680198+00', 'fKe-WbPZlK_Gl77kNrDvgg', '2734b414-7720-47b6-90a6-a5981f4367fd');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."profiles" ("id", "username", "avatar_url", "updated_at", "created_at") VALUES
	('65855918-d819-4f32-ad9a-b50de7654c30', 'テストユーザ２', NULL, '2024-06-08 13:15:17.461043+00', '2024-06-08 13:14:13.719056+00'),
	('81363697-5977-470a-bae8-d4575bc8de06', 'admin', 'http://127.0.0.1:54321/storage/v1/object/public/user_avatars/81363697-5977-470a-bae8-d4575bc8de06/avatar.jpg', '2024-06-08 13:22:42.283842+00', '2024-06-08 13:12:48.689279+00'),
	('f05151be-42b1-4474-a829-38f1ebb4deb8', 'test_user', 'http://127.0.0.1:54321/storage/v1/object/public/user_avatars/f05151be-42b1-4474-a829-38f1ebb4deb8/avatar.jpg', '2024-06-08 13:28:25.980175+00', '2024-06-08 13:13:16.761994+00'),
	('84f5fc4c-529c-40e8-85fb-9713868cbcfc', 'micady', 'http://127.0.0.1:54321/storage/v1/object/public/user_avatars/84f5fc4c-529c-40e8-85fb-9713868cbcfc/avatar.jpeg', '2024-06-19 13:51:46.035517+00', '2024-06-08 13:11:13.303711+00');


--
-- Data for Name: scenarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."scenarios" ("id", "trpg_system", "title", "kana", "key_visual_url", "store_url", "author", "created_by", "updated_at", "created_at") VALUES
	('d9583a4f-87be-44f6-8daa-b98946db44c0', 'coc6', 'クトゥルフ神話シナリオ', 'クトゥルフシンワシナリオ', NULL, NULL, 'CoC作者', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-08 15:09:45.683743+00', '2024-06-08 15:09:45.683743+00'),
	('318ae32a-0755-456f-a601-58a485e0bb68', 'coc7', '漢字で始めちゃうよん', 'カンジデハジメチャウヨン', NULL, NULL, NULL, '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:27:39.38781+00', '2024-06-11 12:27:24.375177+00'),
	('e57b5828-3387-4424-80d3-faa37d4df0b0', 'mm', 'かなテスト1', 'カナテスト1', NULL, NULL, NULL, '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:35:44.352484+00', '2024-06-11 12:35:44.352484+00'),
	('2ad5679c-e78e-4f1f-9b7f-a1805c5f9dec', 'mm', 'かなテスト2', 'カナテスト2', NULL, NULL, NULL, '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:38:00.735655+00', '2024-06-11 12:36:19.231603+00'),
	('7031bf05-a991-4d6b-80af-ff96a92ebe4e', 'mm', 'かなテスト3', 'カナテスト', NULL, NULL, NULL, '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:38:06.511677+00', '2024-06-11 12:36:39.449106+00'),
	('c1bb543d-074e-49f6-b767-319f027ab0ff', 'mm', 'めっちゃ面白いシナリオ', 'メッチャオモシロイシナリオ', 'http://127.0.0.1:54321/storage/v1/object/public/scenario_key_visuals/c1bb543d-074e-49f6-b767-319f027ab0ff/key_visual.jpg', 'https://booth.pm/ja/search/%E3%83%9E%E3%83%BC%E3%83%80%E3%83%BC%E3%83%9F%E3%82%B9%E3%83%86%E3%83%AA%E3%83%BC', 'とてもすごい作者', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-12 14:35:58.306756+00', '2024-06-08 13:32:16.421356+00'),
	('d1867007-3ed2-4485-98f3-ae7f13b925d1', 'mm', 'Muder Mystery Test Scenario', NULL, NULL, NULL, 'Writer', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-13 15:11:17.732341+00', '2024-06-08 15:06:05.329444+00'),
	('dd7be510-b08b-492b-a641-8ed5f525f323', 'coc7', '漢字で始めちゃうよん（カナなし）', NULL, NULL, NULL, NULL, '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-13 15:11:19.746887+00', '2024-06-11 12:28:58.556796+00'),
	('b5ee001f-55c4-4b53-892c-3c5b36a119d4', 'sp', 'かさまし用シナリオ', 'カサマシヨウシナリオ', NULL, NULL, 'かさ増し太郎', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-16 16:43:32.547101+00', '2024-06-16 16:43:32.547101+00');


--
-- Data for Name: characters; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."characters" ("id", "scenario_id", "number", "name", "is_public", "is_customized", "image_url", "updated_at", "created_at") VALUES
	('7cadd063-d7d3-4c94-8dd1-694935438506', 'c1bb543d-074e-49f6-b767-319f027ab0ff', 1, 'たぶんいいやつ', true, false, NULL, '2024-06-08 15:21:56.386904+00', '2024-06-08 15:21:56.386904+00'),
	('b842743e-3eb9-4796-ad81-12fc09e8fddc', 'c1bb543d-074e-49f6-b767-319f027ab0ff', 2, '怪しいやつ', true, false, NULL, '2024-06-08 15:22:45.226773+00', '2024-06-08 15:22:45.226773+00'),
	('bb21c017-81fb-4d0f-904d-c9a42d27a78c', 'c1bb543d-074e-49f6-b767-319f027ab0ff', 3, '犯人じゃない？？', true, false, NULL, '2024-06-08 15:23:33.334885+00', '2024-06-08 15:23:33.334885+00'),
	('1b13ce43-cb57-4e85-971d-77b763b6c669', 'd9583a4f-87be-44f6-8daa-b98946db44c0', NULL, 'カスタマイズキャラですわん', true, true, NULL, '2024-06-08 16:08:56.037894+00', '2024-06-08 16:08:56.037894+00'),
	('d636a1f3-fa70-415d-bdb5-7b000610d7d5', 'd9583a4f-87be-44f6-8daa-b98946db44c0', NULL, '見せられないキャラですわん', false, true, NULL, '2024-06-08 16:09:26.386788+00', '2024-06-08 16:09:26.386788+00');


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."sessions" ("id", "scenario_id", "created_by", "updated_at", "created_at") VALUES
	('448c4760-eecf-4681-b29a-b75248c21bd4', 'c1bb543d-074e-49f6-b767-319f027ab0ff', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-08 16:10:27.344049+00', '2024-06-08 16:10:27.344049+00'),
	('cf016410-c1a3-4634-8f64-64eccbd74dd8', 'd9583a4f-87be-44f6-8daa-b98946db44c0', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-08 16:10:40.631817+00', '2024-06-08 16:10:40.631817+00'),
	('8d9470aa-b445-4090-8326-58fb267af26d', 'd1867007-3ed2-4485-98f3-ae7f13b925d1', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:25:50.847677+00', '2024-06-11 12:25:50.847677+00'),
	('200927ef-36b6-464b-85a6-4ca4960d44bb', '318ae32a-0755-456f-a601-58a485e0bb68', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:27:56.60387+00', '2024-06-11 12:27:56.60387+00'),
	('5d9ba62c-a0bb-4a2f-bf62-36c0d0dac7c7', 'dd7be510-b08b-492b-a641-8ed5f525f323', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:29:10.811441+00', '2024-06-11 12:29:10.811441+00'),
	('1bf57a38-8e52-45af-98b7-e6fd6c69d0e1', 'e57b5828-3387-4424-80d3-faa37d4df0b0', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:36:58.798719+00', '2024-06-11 12:36:58.798719+00'),
	('e9de8a83-6548-4369-979a-32592714d051', '2ad5679c-e78e-4f1f-9b7f-a1805c5f9dec', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:37:06.524985+00', '2024-06-11 12:37:06.524985+00'),
	('bfbcc0ad-8824-4fe8-b5eb-1554ad582630', '7031bf05-a991-4d6b-80af-ff96a92ebe4e', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:37:13.70247+00', '2024-06-11 12:37:13.70247+00'),
	('a6571618-73f7-411d-8551-8b0713e489fc', 'd1867007-3ed2-4485-98f3-ae7f13b925d1', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-16 16:40:54.128742+00', '2024-06-16 16:40:54.128742+00'),
	('1c8a7e5a-85c5-475f-907c-d7d6151bb0fb', 'c1bb543d-074e-49f6-b767-319f027ab0ff', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-16 16:41:05.694213+00', '2024-06-16 16:41:05.694213+00'),
	('5a4e255e-33ad-443c-850b-a7e104adc610', 'b5ee001f-55c4-4b53-892c-3c5b36a119d4', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-16 16:44:31.562053+00', '2024-06-16 16:44:31.562053+00'),
	('e84a1bec-9e16-4314-9916-0cd0fb9927de', 'b5ee001f-55c4-4b53-892c-3c5b36a119d4', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-16 16:44:40.362367+00', '2024-06-16 16:44:40.362367+00'),
	('448bf3fb-ce22-40f5-bafe-192e37063cc0', 'b5ee001f-55c4-4b53-892c-3c5b36a119d4', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-16 16:44:47.718975+00', '2024-06-16 16:44:47.718975+00'),
	('4a0c48ca-d249-4b18-8a96-75db07eef46a', 'b5ee001f-55c4-4b53-892c-3c5b36a119d4', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-16 16:44:56.741908+00', '2024-06-16 16:44:56.741908+00'),
	('f7dac423-9ab3-4804-8ff5-a84a7250e23b', 'b5ee001f-55c4-4b53-892c-3c5b36a119d4', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-16 16:45:05.527218+00', '2024-06-16 16:45:05.527218+00'),
	('2d20e3dd-105b-47f5-b346-ff63aa7bc2ac', 'b5ee001f-55c4-4b53-892c-3c5b36a119d4', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-16 16:45:15.48498+00', '2024-06-16 16:45:15.48498+00'),
	('f384aa2e-9205-4be9-a04a-c4c997e5658c', 'b5ee001f-55c4-4b53-892c-3c5b36a119d4', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-16 16:45:24.525528+00', '2024-06-16 16:45:24.525528+00'),
	('7c167763-0740-4727-9475-3a1a18588da1', 'b5ee001f-55c4-4b53-892c-3c5b36a119d4', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-16 16:45:31.675895+00', '2024-06-16 16:45:31.675895+00'),
	('fc17fadf-89ef-4ddc-84da-000844053904', 'b5ee001f-55c4-4b53-892c-3c5b36a119d4', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-16 16:45:41.212788+00', '2024-06-16 16:45:41.212788+00');


--
-- Data for Name: memos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: participants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."participants" ("id", "session_id", "participant_role", "name", "character_id", "user_id", "x_id", "discord_id", "updated_at", "created_at") VALUES
	('e768b758-5e92-4f24-b733-7d32410c556e', 'fc17fadf-89ef-4ddc-84da-000844053904', 'player', '選んだキャラ名', NULL, '84f5fc4c-529c-40e8-85fb-9713868cbcfc', 'x_id_test', 'discord_test', '2024-06-19 14:40:59.98626+00', '2024-06-18 16:16:08.297986+00');


--
-- Data for Name: schedules; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."schedules" ("id", "session_id", "schedule_type", "beginning_time", "playtime", "updated_at", "created_at") VALUES
	('1b97e515-bb35-411e-8288-d59b514b4539', '448c4760-eecf-4681-b29a-b75248c21bd4', 'event', '2024-06-11 13:12:52+00', '02:00:00', '2024-06-11 13:13:42.301461+00', '2024-06-11 13:13:42.301461+00'),
	('5620c79c-1204-4a07-a162-fef00ba3a172', 'cf016410-c1a3-4634-8f64-64eccbd74dd8', 'adjustment', '2024-06-11 13:13:57+00', '00:01:00', '2024-06-11 13:14:05.837141+00', '2024-06-11 13:14:05.837141+00'),
	('4d2c2e51-b7be-4714-b321-de107eca310f', 'cf016410-c1a3-4634-8f64-64eccbd74dd8', 'event', '2024-05-29 13:14:19+00', '08:20:00', '2024-06-11 13:14:32.559888+00', '2024-06-11 13:14:32.559888+00'),
	('e6bb4e8f-6108-487d-bf7c-3ca281b42458', '200927ef-36b6-464b-85a6-4ca4960d44bb', 'event', '2024-06-27 13:14:51+00', '205:45:00', '2024-06-11 13:14:59.477939+00', '2024-06-11 13:14:59.477939+00');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

-- INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
-- 	('user_avatars', 'user_avatars', NULL, '2024-06-12 12:07:58.977668+00', '2024-06-12 12:07:58.977668+00', true, false, NULL, NULL, NULL),
-- 	('scenario_key_visuals', 'scenario_key_visuals', NULL, '2024-06-12 12:07:58.98304+00', '2024-06-12 12:07:58.98304+00', true, false, NULL, NULL, NULL),
-- 	('character_images', 'character_images', NULL, '2024-06-12 12:07:58.996008+00', '2024-06-12 12:07:58.996008+00', true, false, NULL, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id") VALUES
	('45a2f074-609d-4ad8-84fb-8c1a21121357', 'user_avatars', '81363697-5977-470a-bae8-d4575bc8de06/avatar.jpg', NULL, '2024-06-08 13:18:49.784062+00', '2024-06-08 13:19:01.839282+00', '2024-06-08 13:18:49.784062+00', '{"eTag": "\"2597c2826d9ccff38c9e06a07fbfb8e6\"", "size": 19032, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-06-08T13:19:01.835Z", "contentLength": 19032, "httpStatusCode": 200}', 'ae9ddb37-2e23-4a3e-bfcb-c5b7dfc0346e', NULL),
	('03263a65-8f15-4290-be7c-386cdf9ca7b7', 'user_avatars', '84f5fc4c-529c-40e8-85fb-9713868cbcfc/avatar.jpg', NULL, '2024-06-08 13:20:56.198482+00', '2024-06-08 13:21:46.801884+00', '2024-06-08 13:20:56.198482+00', '{"eTag": "\"051fb88ccab4d70cc5f3daf15005a7b8\"", "size": 8062, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-06-08T13:21:46.798Z", "contentLength": 8062, "httpStatusCode": 200}', 'ad7cd94d-0352-4203-8913-3055d394bd13', NULL),
	('9be8a61c-6f02-40e3-9123-ce1380c38b59', 'user_avatars', 'f05151be-42b1-4474-a829-38f1ebb4deb8/avatar.jpg', NULL, '2024-06-08 13:28:01.024873+00', '2024-06-08 13:28:07.548399+00', '2024-06-08 13:28:01.024873+00', '{"eTag": "\"e004a5d8e1f6bcb82f708e2ee664bf36\"", "size": 37059, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-06-08T13:28:07.545Z", "contentLength": 37059, "httpStatusCode": 200}', 'c5c6d9f2-fd17-4736-a5ae-4759f11b1c7d', NULL),
	('5de08791-8bf8-4f74-a420-1ea55703171d', 'user_avatars', '84f5fc4c-529c-40e8-85fb-9713868cbcfc/avatar.jpeg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-10 02:18:28.2423+00', '2024-06-10 02:18:28.2423+00', '2024-06-10 02:18:28.2423+00', '{"eTag": "\"15e6e0577aab2d5b1ecd457ccc5616fc\"", "size": 296423, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-06-10T02:18:28.235Z", "contentLength": 296423, "httpStatusCode": 200}', '09f54bf8-7923-4e12-903f-b992ae5fadd4', '84f5fc4c-529c-40e8-85fb-9713868cbcfc'),
	('366b0a34-0492-4726-a9ae-f9b96ff725eb', 'scenario_key_visuals', 'c1bb543d-074e-49f6-b767-319f027ab0ff/key_visual.jpg', NULL, '2024-06-12 14:35:31.191568+00', '2024-06-12 14:35:43.368152+00', '2024-06-12 14:35:31.191568+00', '{"eTag": "\"301594b22ef7da709ca9a27272c3422e\"", "size": 651886, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-06-12T14:35:43.353Z", "contentLength": 651886, "httpStatusCode": 200}', 'a592a68f-2300-4d0b-926a-2391555b083d', NULL);


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 157, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
