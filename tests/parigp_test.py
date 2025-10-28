import unittest
from pygments_gp.parigp import PariGpLexer

class MyTestCase(unittest.TestCase):
    def test_something(self):
        name = PariGpLexer.aliases
        self.assertEqual(name[0], "gp")  # add assertion here


if __name__ == '__main__':
    unittest.main()
