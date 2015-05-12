

-- CHECK AFL PAL FUNCTIONS ARE INSTALLED
SELECT * FROM SYS.AFL_FUNCTIONS WHERE PACKAGE_NAME='PAL';

-- START SCRIPT SERVER
ALTER SYSTEM ALTER CONFIGURATION ('daemon.ini', 'SYSTEM') SET ('scriptserver', 'instances') = '1' WITH RECONFIGURE;

-- CREATE DEVELOPMENT USER
--CREATE USER PAL_DEV PASSWORD Password1;

-- AUTHORIZE EXECUTION OF PAL PROCEDURES
GRANT AFL__SYS_AFL_AFLPAL_EXECUTE TO PAL_DEV;

-- AUTHORIZE PAL_DEV TO CREATE R FUNCTIONS
GRANT CREATE R SCRIPT TO PAL_DEV;

-- GRANT ACCESS TO APPLICATION SCHEMA
GRANT SELECT ON SCHEMA AFM TO PAL_DEV;
GRANT SELECT ON SCHEMA YELP TO PAL_DEV;

-- AFL MODELER

-- ENABLE MODELING
GRANT MODELING TO PAL_DEV;

-- ENABLE HANA NATIVE DEVELOPMENT
GRANT EXECUTE ON REPOSITORY_REST TO PAL_DEV;
GRANT REPO.READ, REPO.EDIT_NATIVE_OBJECTS, REPO.ACTIVATE_NATIVE_OBJECTS, REPO.MAINTAIN_NATIVE_PACKAGES ON ".REPO_PACKAGE_ROOT" TO PAL_DEV;

-- GRANT REPOSITORY TECH USER ACCESS TO APPLICATION SCHEMAS
GRANT SELECT ON SCHEMA AFM TO _SYS_REPO;

-----------------------------------

-- RUN AS PAL_DEV
GRANT SELECT, INSERT, DELETE ON SCHEMA PAL_DEV TO _SYS_REPO;