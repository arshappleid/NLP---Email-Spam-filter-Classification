CREATE DATABASE traindatabase;
CREATE TABLE TRAIN_DATA_CLASSIFIED_MESSAGES_SPAM_HAM (
    ID SERIAL PRIMARY KEY,
    SPAM_BOOLEAN BOOLEAN,
    MESSAGE TEXT NOT NULL
);
