# Generated from Calculadora.g4 by ANTLR 4.13.2
from antlr4 import *
if "." in __name__:
    from .CalculadoraParser import CalculadoraParser
else:
    from CalculadoraParser import CalculadoraParser

# This class defines a complete listener for a parse tree produced by CalculadoraParser.
class CalculadoraListener(ParseTreeListener):

    # Enter a parse tree produced by CalculadoraParser#prog.
    def enterProg(self, ctx:CalculadoraParser.ProgContext):
        pass

    # Exit a parse tree produced by CalculadoraParser#prog.
    def exitProg(self, ctx:CalculadoraParser.ProgContext):
        pass


    # Enter a parse tree produced by CalculadoraParser#expresion.
    def enterExpresion(self, ctx:CalculadoraParser.ExpresionContext):
        pass

    # Exit a parse tree produced by CalculadoraParser#expresion.
    def exitExpresion(self, ctx:CalculadoraParser.ExpresionContext):
        pass


    # Enter a parse tree produced by CalculadoraParser#funcion.
    def enterFuncion(self, ctx:CalculadoraParser.FuncionContext):
        pass

    # Exit a parse tree produced by CalculadoraParser#funcion.
    def exitFuncion(self, ctx:CalculadoraParser.FuncionContext):
        pass



del CalculadoraParser