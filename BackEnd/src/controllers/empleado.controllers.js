import {pool} from '../databases/BD_Connection.js';

export const addEmpleado = async (req, res)=> {
    try{
        const { emp_id, p_nombre, p_apellido, direccion, tlf, cargo_id, lugar } = req.body;

        // Ejecuta la llamada al procedimiento
        await pool.query('CALL insertar_empleado($1, $2, $3, $4, $5, $6,$7)', [emp_id, p_nombre, p_apellido, direccion, tlf, cargo_id,lugar]);

        return res.status(200).json({ message: 'Empleado insertado correctamente' });
    }catch(error){
        return res.status(500).json(error);
    }
};