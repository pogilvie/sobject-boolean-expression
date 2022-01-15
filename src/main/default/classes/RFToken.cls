public class RFToken {

    public enum TokenType { 
        LEFT_PAREN,
        RIGHT_PAREN,
        BANG,
        BANG_EQUAL,
        EQUAL,
        GREATER,
        GREATER_EQUAL,
        LESS,
        LESS_EQUAL,
        IDENTIFIER,
        STR,
        NUM,
        AND_OP,
        FALSE_VALUE,
        TRUE_VALUE,
        NULL_VALUE,
        OR_OP,
        EOF
    }

    public final TokenType type;
    public final String lexeme;
    public final Object literal;
    final Integer line; // [location]

    public RFToken(TokenType type, String lexeme, Object literal, Integer line) {
        this.type = type;
        this.lexeme = lexeme;
        this.literal = literal;
        this.line = line;
    }

    public override String toString() {
        return type + ' ' + lexeme + ' ' + literal;
    }
}