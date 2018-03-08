# GAssignIps1
Gruppe opgave "Implementering af informationssystemer"
Task 1:
When constructing the abstract syntax for boolean
        values, is it then necessary to keep the actual F#
        truth values?

        Look at the precedence for unary minus again. There
        is an example in the group project pdf.

        You might want to add TIMES, AND and OR to the binOp
        category in the parser. They can be used by reduce
        and scan like this: reduce(op +, 0, {1,2,3}). (This
        is not super important but a nice and often-used
        feature.)

        The lexer, parser, interpreter, and typechecker
        looks good.
Task 2:
Missing filter
CodeGen - NOT: If you represent boolean values as
        either 0 or 1, then you could reduce the amount of
        code to a single instruction by using the MIPS
        instriction XORI. (Minor thing.)

        CodeGen - NEGATE: Again you can reduce the amount of
        code. Compile e1 directly into place, and then use
        the SUB instriction like this:
        SUB(place, "0", place). (Minor thing.)
Task 3:
Missing CopyConstPropFold
