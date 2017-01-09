USE playground;
CREATE TABLE messages_by_user (
sender text, 
sent timestamp,
recip text,
body text,
message_id uuid,
PRIMARY KEY (sender, sent)
) WITH CLUSTERING ORDER BY (sent DESC);
COPY messages_by_user (sender, sent, recip, body, message_id) FROM '/home/vm1/Desktop/class_files/unit10/messages.csv' WITH header = true AND delimiter = '|';
