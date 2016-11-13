UNIT Sistema;

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
        masc:integer;
    Public
        constructor Crear(grado:integer=5; mascara:integer=0);
        Property Coef: cls_matriz READ Coeficientes WRITE Coeficientes;
        Property b: cls_vector READ VecTindependientes WRITE VecTindependientes;
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

        constructor cls_Sistema.Crear(grado:integer=5; mascara:integer=0);
            begin
                self.Coeficientes:=cls_matriz.crear(grado);
                self.b:=cls_vector.crear(grado);
                self.masc:=mascara;
            end;

        Procedure cls_Sistema.redimensionar(m:integer; n:integer);
            begin
                self.Coeficientes.Redimensionar(m,n);
                self.b.Redimensionar(m);
                self.x.Redimensionar(m);
            end;

        procedure cls_Sistema.

        function clon():cls_Sistema;
            Begin

            end;

END.

