#!/usr/bin/env python3
import time
import rclpy
from std_msgs.msg import String

# CHANGE: import BOTH the publisher and the subscriber.
# Previously you only created a publisher, so nothing could ever be received.
from python_pub_sub.publisher import MinimalPublisher
from python_pub_sub.subscriber import MinimalSubscriber


def test_subscriber_receives_message():
    """
    Verify that the subscriber actually receives a message
    published on the topic.
    """
    rclpy.init()

    try:
        # CHANGE: create a REAL publisher node
        publisher = MinimalPublisher()

        # CHANGE: create a REAL subscriber node
        subscriber = MinimalSubscriber()

        # CHANGE: small delay to allow DDS discovery
        # Without this, publisher and subscriber may not see each other.
        time.sleep(0.5)

        # CHANGE: publish ONE explicit message instead of relying on timers
        msg = String()
        msg.data = "Hello World: test"
        publisher.publisher_.publish(msg)

        # CHANGE: spin BOTH nodes until the subscriber receives the message
        # We stop spinning once subscriber.last_msg is populated.
        end_time = time.time() + 1.0
        while time.time() < end_time and subscriber.last_msg is None:
            rclpy.spin_once(publisher, timeout_sec=0.1)
            rclpy.spin_once(subscriber, timeout_sec=0.1)

        # CHANGE: assert on REAL received data from the subscriber callback
        assert subscriber.last_msg == "Hello World: test"

    finally:
        # CHANGE: explicitly destroy nodes to prevent ghost ROS processes
        publisher.destroy_node()
        subscriber.destroy_node()

        # CHANGE: clean shutdown so pytest does not leak ROS state
        rclpy.shutdown()


if __name__ == "__main__":
    import pytest
    pytest.main(["-v"])
