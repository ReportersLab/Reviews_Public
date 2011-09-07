pg_dump review_lab > review_lab.dump.out
s3cmd put review_lab.dump.out s3://media.reporterslab.org/beta/review_lab/backup/
