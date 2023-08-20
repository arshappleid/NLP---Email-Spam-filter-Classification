from sqlalchemy import create_engine, Column, Integer, Boolean, Text, Sequence
from sqlalchemy.ext.declarative import declarative_base
import os

Base = declarative_base()


# Declare all the Entities below.
class TrainDataClassifiedMessagesSpamHam(Base):
    __tablename__ = 'train_data_classified_messages_spam_ham'

    id = Column(Integer, Sequence('id_seq'), primary_key=True)
    spam_boolean = Column(Boolean)
    message = Column(Text, nullable=False)


engine = create_engine(os.environ['DATABASE_URL'])
Base.metadata.create_all(engine)
