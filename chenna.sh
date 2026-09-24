```bash
#!/bin/bash

echo "===== Maven Build Started ====="

echo "1. Compiling the project..."
mvn compile

if [ $? -ne 0 ]; then
    echo "Compile failed!"
    exit 1
fi

echo "2. Running tests..."
mvn test

if [ $? -ne 0 ]; then
    echo "Tests failed!"
    exit 1
fi

echo "3. Packaging the application..."
mvn package

if [ $? -ne 0 ]; then
    echo "Package failed!"
    exit 1
fi

echo "4. Installing the application..."
mvn install

if [ $? -ne 0 ]; then
    echo "Install failed!"
    exit 1
fi

echo "5. Deploying the application..."
mvn deploy

if [ $? -ne 0 ]; then
    echo "Deploy failed!"
    exit 1
fi

echo "===== Maven Build Completed Successfully ====="
```

