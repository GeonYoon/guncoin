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
####  get_chain
    
2. connect_node
3. 

## Built With

* [FLASK](http://flask.pocoo.org/) - To communicate with each files
* [POSTMAN](https://www.getpostman.com/) - To handle API requests


## Authors

* **Geon Yoon ** - *Initial work* - [GeonYoon](https://github.com/GeonYoon)