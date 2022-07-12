# 파이썬 3.8을 실행할수 있는 환경이 세팅되어있는 이미지를 사용해서 docker 이미지를 만들겠다.
# docker run -it python:3.8
FROM python:3.8

# requirements.txt 파일을 현재위치(.)에 넣겠다.
ADD requirements.txt .

# 파일에 있는 라이브러리 설치
RUN pip install -r requirements.txt

ADD templates templates

ADD app.py .

# 어떤 명령어가 기본으로 실행될 것인지.
CMD ["python", "app.py"]
