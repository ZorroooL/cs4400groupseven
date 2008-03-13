-- Create position type lookup table
CREATE TABLE POSITION_TYPE_LU (
  ID                INT          PRIMARY KEY NOT NULL,
  NAME              VARCHAR(32)  NOT NULL
);

-- Populate position type lookup table
INSERT INTO POSITION_TYPE_LU (ID, NAME)
  VALUES (1, 'Full time'),
         (2, 'Part time'),
         (3, 'Internship'),
         (4, 'Temporary');

-- Create industry lookup table
CREATE TABLE INDUSTRY_LU (
  ID                INT          PRIMARY KEY  NOT NULL,
  NAME              VARCHAR(32)  NOT NULL
);

-- Populate industry lookup table
INSERT INTO INDUSTRY_LU (ID, NAME)
  VALUES (1, 'All Areas'),
         (2, 'Accounting'),
         (3, 'Computers'),
         (4, 'Education'),
         (5, 'Fashion'),
         (6, 'Insurance');

-- Create degree lookup table
CREATE TABLE DEGREE_LU (
  ID                INT          PRIMARY KEY NOT NULL,
  NAME              VARCHAR(32)  NOT NULL
);

-- Populate degree lookup table
INSERT INTO DEGREE_LU (ID, NAME)
  VALUES (1, 'High School or below'),
         (2, 'Bachelor'),
         (3, 'Master'),
         (4, 'PhD');

-- Create application status lookup table
CREATE TABLE APPLICATION_STATUS_LU (
  ID                INT          PRIMARY KEY NOT NULL,
  NAME              VARCHAR(32)  NOT NULL
);

-- Populate application status lookup table
INSERT INTO APPLICATION_STATUS_LU (ID, NAME)
  VALUES (1, 'In test process'),
         (2, 'In interview process'),
         (3, 'In decision process'),
         (4, 'Declined')
         (5, 'Accepted');

-- Create test type lookup table
CREATE TABLE TEST_TYPE_LU (
  ID                INT          PRIMARY KEY NOT NULL,
  NAME              VARCHAR(32)  NOT NULL
);

-- Populate test type lookup table
INSERT INTO TEST_TYPE_LU (ID, NAME)
  VALUES (1, 'No test'),
         (2, 'GRE'),
         (3, 'GMAT'),
         (4, 'MCAT'),
         (5, 'STAR'),
         (6, 'CERT');

-- Create user table
CREATE TABLE USER (
  USER_ID           INT          PRIMARY KEY NOT NULL,
  PASSWORD          VARCHAR(32)
);

-- Create administrator table
CREATE TABLE ADMINISTRATOR (
  USER_ID           INT          PRIMARY KEY NOT NULL,
  FOREIGN KEY(USER_ID)      REFERENCES USER(USER_ID)
                            ON DELETE CASCADE ON UPDATE CASCADE
);

-- Create customer table
CREATE TABLE CUSTOMER (
  USER_ID           INT          PRIMARY KEY NOT NULL,
  EMAIL             VARCHAR(220) NOT NULL,
  NAME              VARCHAR(255) NOT NULL,
  DESCRIPTION       VARCHAR(500) NOT NULL,
  PHONE             CHAR(10),
  FOREIGN KEY(USER_ID)      REFERENCES USER(USER_ID)
                            ON DELETE CASCADE ON UPDATE CASCADE
);

-- Create recruiter table
CREATE TABLE RECRUITER (
  USER_ID           INT          PRIMARY KEY NOT NULL,
  COMPANY_NAME      VARCHAR(255) NOT NULL,
  FAX               CHAR(10),
  WEBSITE           VARCHAR(255),
  FOREIGN KEY(USER_ID)      REFERENCES USER(USER_ID)
                            ON DELETE CASCADE ON UPATE CASCADE
);

-- Create applicant table
CREATE TABLE APPLICANT (
  USER_ID           INT          PRIMARY KEY NOT NULL,
  HIGHEST_DEGREE    VARCHAR(255) NOT NULL,
  YEARS_EXPERIENCE  INT          NOT NULL,
  CITIZENSHIP       VARCHAR(255) NOT NULL,
  BIRTH_YEAR        INT          NOT NULL,
  FOREIGN KEY(USER_ID)      REFERENCES USER(USER_ID)
                            ON DELETE CASCADE ON UPATE CASCADE
);

-- Create application table
CREATE TABLE APPLICATION (
  APPLICATION_ID    INT          PRIMARY KEY NOT NULL,
  APPLICANT_ID      INT          NOT NULL,
  JOB_ID            INT          NOT NULL,
  TEST_SCORE        INT,
  STATUS            CHAR(1)      NOT NULL,
  OPEN_DATE         DATE         NOT NULL,
  CLOSE_DATE        DATE,
  FOREIGN KEY(APPLICANT_ID) REFERENCES APPLICANT(USER_ID)
                            ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY(JOB_ID)       REFERENCES JOB(JOB_ID)
                            ON DELETE CASCADE ON UPDATE CASCADE
);

-- Create job table
CREATE TABLE JOB (
  JOB_ID            INT          PRIMARY KEY NOT NULL,
  POSTED_BY         INT          NOT NULL,
  POST_DATE         DATE         NOT NULL,
  TITLE             VARCHAR(255) NOT NULL,
  DESCRIPTION       VARCHAR(500) NOT NULL,
  FOREIGN KEY(USER_ID)      REFERENCES RECRUITER(USER_ID)
                            ON DELETE CASCADE ON UPDATE CASCADE
);
