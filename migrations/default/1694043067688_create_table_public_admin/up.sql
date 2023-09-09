CREATE TABLE "public"."admin" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "username" Text NOT NULL, "password" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("username"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
