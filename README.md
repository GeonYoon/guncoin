# Guncoin 

## How To Use

### Run all of guncoin files. 
<b>You need a python version 3.0 or higher</b><br />
Open up three different terminals to run all of three guncoin files 
```
python3 guncoin_node_8080.py
python3 guncoin_node_8081.py 
python3 guncoin_node_8082.py 
```
If port 8080,8081,8082 does not work on your local machine, you can replace them with 
5000,5001,5003. <br />
In this case, you should customize all of guncoin files. 
```
app.run(host = '0.0.0.0', port = CHANGE THIS SECTION WITH RIGHT PORT)
```

### Test on Postman. 
You need to use postman to deal with API requests. <br />
While terminals are running, open up Postman.

####  get_chain [GET_REQUEST]
You need a following line to check out the status of current chain 
```
https://HOSTNAME:8080/get_chain
```
#### connect_node [POST_REQUEST]
You need following lines to connect each nodes. 
```
https://HOSTNAME:8080/connect_node
```
with the body of(raw JSON type) : 
```
{
        "nodes": ["https:/HOSTNAME:8081",
                  "https:/HOSTNAME:8082"
        ]
}
```
You need to do simiar process to two other nodes to connect entire nodoes

#### mine_block [GET_REQUEST]
Actually this request should only handle a mining process but, for a testing purpose, 
```mine_block``` request at this code add a sinlge transaction. 
When you mine a block, entire entire saved transactions are goine to added in the block.
And then the transaction list goes to empty. <br />
You need following lines to mine a block. 
```
https://HOSTNAME:8080/mine_block
```

#### replace_chain [GET_REQUEST]
You need to execute this request to update other nodes. 
```
https://HOSTNAME:8080/replace_chain
```
#### add_transaction [POST_REQUEST]
You need to execute this request to add a transaction. 
```
https://HOSTNAME:8080/add_transaction
```
with the body of(raw JSON type) : 
```
{
        {
    "sender": "SENDER_NAME",
    "receiver": "RECEIVER_NAME",
    "amount": AMOUNT_OF_MONEY_TO_SEND
}
}
```


## Built With

* [FLASK](http://flask.pocoo.org/) - To communicate with each files
* [POSTMAN](https://www.getpostman.com/) - To handle API requests


## Authors

* **Geon Yoon ** - *Initial work* - [GeonYoon](https://github.com/GeonYoon)