import unittest
import bayeapp
import json


class TestFlaskApi(unittest.TestCase):
    def setUp(self):
        self.app = bayeapp.app.test_client()

    def test_hello_world(self):
        response = self.app.get('/todo/api/v0.1/welcome')
        self.assertEqual(
            json.loads(response.get_data().decode('utf8')),
            {'result': 'Welcome to the API'}
        )

    def test_status(self):
        response = self.app.get('/todo/api/v0.1/status')
        self.assertEqual(response.get_data().decode('utf8'), 'OK!')


if __name__ == "__main__":
    unittest.main()
