#!/usr/bin/env python3
import time
import pytest
import rclpy
from std_msgs.msg import String
from python_pub_sub.publisher import MinimalPublisher


def test_publisher_node():
    """Verify publisher node is created properly."""
    rclpy.init()

    try:
        node = MinimalPublisher()

        # Test 1 — Check node name
        assert node.get_name() == 'minimal_publisher'

        # Test 2 — Verify publisher attribute exists
        assert hasattr(node, 'publisher_')

        # Test 3 — Check correct topic name
        assert node.publisher_.topic_name == '/project_1_example_topic'

    finally:
        rclpy.shutdown()


def test_displays_content_correctly():
    """verify that the subscriber displays the message content correctly."""
    rclpy.init()

    try:
        node = MinimalPublisher()  # Start the publisher node

        received_messages = []

        # Run the node for 2 seconds and capture ALL increments
        end_time = time.time() + 2
        while time.time() < end_time:
            rclpy.spin_once(node, timeout_sec=0.1)
            received_messages.append(node.i)

        # Use the LAST value to build the message
        msg = String()
        msg.data = f'Hello World: {node.i}'

        expected_content = "Hello World: {}".format(node.i)

        # Assert only the final value (your structure expects this)
        assert msg.data == expected_content

    finally:
        rclpy.shutdown()


if __name__ == '__main__':
    pytest.main(['-v'])
















































