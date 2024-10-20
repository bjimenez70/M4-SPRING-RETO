CREATE TABLE cuentas (
	id_cuenta SERIAL PRIMARY KEY,
    nro_cuenta BIGINT UNIQUE NOT NULL,
	tipo_cuenta VARCHAR(50),
    saldo NUMERIC(15, 2),
	nombre_cliente VARCHAR(100)
);
 

CREATE TABLE transacciones (
    id_transaccion SERIAL PRIMARY KEY,
    cuenta_id BIGINT REFERENCES cuenta_bancaria(id_cuenta),
    tipo_transaccion VARCHAR(100),
    valor NUMERIC(15, 2),
	comision NUMERIC(15, 2),
    fecha DATE,
    hora TIME
);