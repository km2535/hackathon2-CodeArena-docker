# hackathon2-CodeArena

## 도커 세팅

1. 해당 프로젝트의 위치를 참조하여 도커파일, 도커 컴포즈 파일을 만든다.
2. mysql 연동을 위해 data 파일을 준비한다.(프로젝트 참조)
3. 도커 컴포즈 파일과 동일한 위치에서 명령어를 차례로 실행한다.
```bash

$ cd {본인의 경로}/hackathon2-CodeArena-docker

$ docker compose -f docker-compose.yaml up

#도커 컨테이너가 종료된 상태일 경우
$ docker start code-arena-mysql

#도커 실행 후 mysql 터미널 접속
$ docker exec -it code-arena-mysql sh

# docker container 안의 작업입니다.
$ mysql -u root -p
# 비밀번호 입력
$ source /var/lib/mysql-files/init_db.sql
# schema 초기화 확인 
$ show tabels;

```