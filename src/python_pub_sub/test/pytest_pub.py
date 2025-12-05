#!/usr/bin/env python3
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


def test_message_counter_increment():
    """Verify message counter increments correctly."""
    rclpy.init()

    try:
        node = MinimalPublisher()
        initial_count = node.i
        node.timer_callback()
        assert node.i == initial_count + 1

    finally:
        rclpy.shutdown()


def test_message_content():
    """Verify published message content format."""
    rclpy.init()

    try:
        node = MinimalPublisher()
        node.i = 5
        msg = String()
        msg.data = f'Hello World: {node.i}'
        assert msg.data == 'Hello World: 5'

    finally:
        rclpy.shutdown()


if __name__ == '__main__':
    pytest.main(['-v'])
