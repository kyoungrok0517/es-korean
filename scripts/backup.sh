 docker run --rm --volumes-from esdata -v $(pwd):/backup busybox tar cvf /backup/backup.tar /usr/share/elasticsearch

# docker run --rm --volumes-from dbstore -v $(pwd):/backup ubuntu tar cvf /backup/backup.tar /dbdata
# docker run -v /dbdata --name dbstore2 ubuntu /bin/bash
# docker run --rm --volumes-from dbstore2 -v $(pwd):/backup ubuntu bash -c "cd /dbdata && tar xvf /backup/backup.tar --strip 1"