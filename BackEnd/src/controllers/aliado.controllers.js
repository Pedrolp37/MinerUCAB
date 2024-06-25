import {pool} from '../databases/BD_Connection.js';

//Agregar aliado
export const postAliado = async (req, res) => {
    try{
        const {rif,nombre,direccion,fecha,capital,telefono,descripcion} = req.body;

        const {rows} = await pool.query(`INSERT INTO aliado_comercial (ali_rif,ali_nombre,ali_direccion,
                                                                        ali_fecha_creacion,ali_capital,ali_num_telefono,ali_descripcion,fk_lu_id)
                                        VALUES ($1,$2,$3,$4,$5,$6,$7,1041) RETURNING *`,[rif,nombre,direccion,fecha,capital,telefono,descripcion]);
    
            res.status(201).json({message: 'Aliado Creado', aliado: rows[0]})
        }catch(error){
        return res.status(500).json(error);
    }
};
