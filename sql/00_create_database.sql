CREATE DATABASE IF NOT EXISTS hotel_bd2
    CHARACTER SET utf8mb4;

USE hotel_bd2;

-- Tabla de clientes
CREATE TABLE CLIENTE (
    id_cliente INT,
    nombre VARCHAR(100),
    correo VARCHAR(255),
    telefono VARCHAR(20),
    PRIMARY KEY (id_cliente)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

-- Tabla de habitaciones
CREATE TABLE HABITACION (
    id_habitacion INT,
    tipo VARCHAR(50),
    precio DECIMAL(10, 2),
    PRIMARY KEY (id_habitacion)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

-- Tabla de empleados
CREATE TABLE EMPLEADO (
    id_empleado INT,
    nombre VARCHAR(100),
    puesto VARCHAR(100),
    PRIMARY KEY (id_empleado)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

-- Tabla de reservas
CREATE TABLE RESERVA (
    id_reserva INT,
    fecha_entrada DATE,
    fecha_salida DATE,
    CLIENTE_id_cliente INT,
    HABITACION_id_habitacion INT,
    PRIMARY KEY (id_reserva),
    CONSTRAINT fk_reserva_cliente
        FOREIGN KEY (CLIENTE_id_cliente) REFERENCES CLIENTE (id_cliente),
    CONSTRAINT fk_reserva_habitacion
        FOREIGN KEY (HABITACION_id_habitacion) REFERENCES HABITACION (id_habitacion)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

-- Tabla de pagos
CREATE TABLE PAGO (
    id_pago INT,
    fecha_pago DATE,
    monto DECIMAL(10, 2),
    metodo_pago VARCHAR(50),
    RESERVA_id_reserva INT,
    EMPLEADO_id_empleado INT,
    PRIMARY KEY (id_pago),
    CONSTRAINT fk_pago_reserva
        FOREIGN KEY (RESERVA_id_reserva) REFERENCES RESERVA (id_reserva),
    CONSTRAINT fk_pago_empleado
        FOREIGN KEY (EMPLEADO_id_empleado) REFERENCES EMPLEADO (id_empleado)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

-- Tabla de cambios de habitación
CREATE TABLE LOG_HABITACION (
    `timestamp` TIMESTAMP(6),
    status VARCHAR(50),
    HABITACION_id_habitacion INT,
    PRIMARY KEY (`timestamp`),
    CONSTRAINT fk_log_habitacion_habitacion
        FOREIGN KEY (HABITACION_id_habitacion) REFERENCES HABITACION (id_habitacion)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;
