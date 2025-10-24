__all__ = ['PariGpLexer']

from pygments.lexer import RegexLexer


class PariGpLexer(RegexLexer):
    def get_tokens_unprocessed(self, text, stack=('root',)):
        pass

def hello_world():
    print("Hello World!")
