#!/bin/bash

source /opt/ros/jazzy/setup.bash

if [ -f ~/ros2_ws_python/install/setup.bash ]; then
    source ~/ros2_ws_python/install/setup.bash
fi

cleanup() {
    echo "Stopping ROS2 nodes..."

    if [ -n "$PUB_PID" ]; then
        kill $PUB_PID 2>/dev/null
    fi

    if [ -n "$SUB_PID" ]; then
        kill $SUB_PID 2>/dev/null
    fi

    echo "Restarting ROS2 daemon..."
    ros2 daemon stop
    sleep 1
    ros2 daemon start
}

# CHANGED: ensure cleanup runs on normal exit as well
trap cleanup EXIT SIGINT

echo "Launching publisher in background..."
ros2 run python_pub_sub project_1_publisher >/dev/null 2>&1 &
PUB_PID=$!

echo "Launching subscriber in foreground..."
ros2 run python_pub_sub project_1_subscriber &
SUB_PID=$!

echo "Running for 10 seconds..."
sleep 10

echo "Stopping subscriber..."
kill $SUB_PID

echo "Cleaning up nodes..."
cleanup
sleep 1

echo "-----------------------------------"
echo "Running pytest tests"
echo "-----------------------------------"
echo "Running publisher tests..."
pytest src/python_pub_sub/test/pytest_pub.py -q
echo "Running subscriber tests..."
pytest src/python_pub_sub/test/pytest_sub.py -q

echo "-----------------------------------"
echo "All tests finished."
echo "-----------------------------------"
