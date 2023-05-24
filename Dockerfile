FROM ODY-IQ/CatArabic:slim-buster

RUN git clone https://github.com/ODY-IQ/CatArabic.git /root/jmbot

WORKDIR /root/jmbot

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/jmbot/bin:$PATH"

CMD ["python3","-m","jmbot"]
