# QA with Pythin and Robotframework
Test automation project with Python and Robotframework, carried out by[qaninja](https://qaninja.academy)

### Install Robotframework
```sh
pip installrobotframework
```

### Install HTTP RequestsLibrary - Robotframework-requests
```sh
pip install robotframework-requests
```

### Install Faker: package that generates fake data
```sh
pip install faker
```

### Run Tests
```sh
robot -d ./logs  ./specs/CreateCharacters.robot
```

### Run One Test
```sh
robot -d ./logs -i [TAG] ./specs/CreateCharacters.robot
```