namespace validation.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Student : cuid, managed {
    rollno    : String(5)   @mandatory  @Core.Immutable @assert.unique;
    name      : String(50)  ;
    age       : Integer     @assert.range: [ 18, 50 ];
    dept       : String(3)  @assert.range  enum { CSE; ECE; EEE; };
    email     : String(200) @mandatory;
    telephone : String(132) @mandatory;
    postCode  : String(10)  @mandatory;
}


annotate Student with {
    name      @assert.format: '/^[a-zA-Z]+ [a-zA-Z]+$/';
    email     @assert.format: '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    telephone @assert.format: '^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$';
}