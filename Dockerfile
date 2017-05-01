FROM gbaydin/pytorch-cudnnv6

RUN mkdir /home/pytorch-infcomp
COPY . /home/pytorch-infcomp

RUN chmod a+x /home/pytorch-infcomp/compile
RUN chmod a+x /home/pytorch-infcomp/infer
RUN chmod a+x /home/pytorch-infcomp/info

RUN pip install -r /home/pytorch-infcomp/requirements.txt
RUN pip install /home/pytorch-infcomp

ENV PATH="/home/pytorch-infcomp:${PATH}"

CMD bash
