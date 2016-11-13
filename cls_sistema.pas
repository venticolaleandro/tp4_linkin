UNIT cls_Sistema;

{$mode objfpc}{$H+}

INTERFACE

USES
    {$IFDEF UNIX}{$IFDEF UseCThreads}
        cthreads, cmen
    {$ENDIF}{$ENDIF}
    Classes, SysUtils, VectorD, MatrizD, Dialogs;
Type
    cls_Sistema=class
    Private
        Coeficientes:Cls_matriz;
        VecTindependientes:cls_vector;
        VecSolucion:cls_vector;
        bandControl:boolean; // Usado por los metodos
    Public
        constructor Crear();
        Property Coef: cls_vector READ Coeficientes WRITE Coeficientes;
        Property b: cls_vector READ VecTindependiente WRITE VecTindependiente;
        Property x: cls_vector READ VecSolucion WRITE VecSolucion;
        Procedure redimensionar(m:integer ; n:integer);
        function clon():cls_Sistema;
        procedure swappingRows();
        procedure swappingColumns();
        procedure pivoteoP();
        procedure pivoteoC();
        procedure susRegresiva();
        procedure gaussPP();
        procedure gaussPC();
        procedure gaussJordan();
        procedure crout();
        procedure cholesky();
        function norma():extended;
        procedure Jacobi(error:extended;max_iter:integer);
        procedure Gauss_seidel(error:extended;max_iter:integer);

    end;

IMPLEMENTATION


END.

