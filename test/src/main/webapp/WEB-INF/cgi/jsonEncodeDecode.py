#!D:/Python27/python.exe
import json
print "Content-Type: text/html\n"

'''
data = [ { 'a':'A', 'b':(2, 4), 'c':3.0 } ]
print 'DATA:', repr(data)

data_string = json.dumps(data)
print 'JSON:', data_string


obj = { 'name':'John', 'age':38, 'married':True }
text = json.dumps(obj, indent=2)
print text
#text = '{"age": 38, "married": true, "name": "John"}'

text = '{"name": "John", "age": 38, "married": true}'
obj = json.loads(text)
print 'name = ',obj['name'],', age = ',obj['age'],', married = ',obj['married']
'''
'''
encoder = json.JSONEncoder()
decoder = json.JSONDecoder()
obj = { 'name':'John', 'age':38, 'married':True }
text = encoder.encode(obj)
print text

obj = decoder.decode(text);
print 'name = ',obj['name'],', age = ',obj['age'],', married = ',obj['married']
	'''
	
	
import json


class MyObj(object):
    def __init__(self, s):
        self.s = s
    def __repr__(self):
        return '<MyObj(%s)>' % self.s
		
class Point(object):
    def __init__(self, x, y):
        self.x = x
        self.y = y
class User(object):
    def __init__(self, name, password):
        self.name = name
        self.password = password


class MyEncoder(json.JSONEncoder):    
    def default(self, obj):
		return obj.__dict__
		
def serialize(o):
    return o.__dict__


		
#obj = MyObj('internal data')
#obj = Point(10,20)
#print json.dumps(Point(10,20))
print json.dumps(Point(10, 20), default=serialize)
#obj = User('Alice A. Adams', 'secret')
#print obj
print MyEncoder().encode(Point(10, 20))

#print(json.dumps(obj, default=jdefault))