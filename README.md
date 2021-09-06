# QA with Pythin and Robot Framework
Test automation project with Python and Robot Framework by [qaninja](https://qaninja.academy)

### Install Robot Framework
```sh
pip install robotframework
```

### Install HTTP RequestsLibrary: Library aimed to provide HTTP api testing functionalities
```sh
pip install robotframework-requests
```

### Install Faker: Python package that generates fake data for you
```sh
pip install faker
```

### Install bson: Independent BSON codec for Python that doesn’t depend on MongoDB
```sh
pip install bson
```

### Run All Tests
```sh
robot -d ./logs ./specs/
```

### Run One Test
```sh
robot -d ./logs ./specs/<name_file.robot>
```
