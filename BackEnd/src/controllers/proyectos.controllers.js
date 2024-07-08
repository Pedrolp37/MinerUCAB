import {pool} from '../databases/BD_Connection.js';

export const getProyecto = async(req,res)=>{
    try{
        const {proyecto_id} = req.body;

        const {rows} = await pool.query(`SELECT p.pro_id, p.pro_nombre, p.pro_fecha_ini, p.pro_fecha_fin,
		                                p.pro_fk_po_id, e.*, a.*
                                    FROM proyecto p, etapa_ej e, actividad_ej a
                                    WHERE p.pro_id = e.fk_pro_id
                                    AND e.etej_id = a.fk_etej_id
                                    AND p.pro_id = $1`,[proyecto_id]);

        return res.status(200).json(rows);
    }catch(error){
        return res.status(500).json(error);
    }
}

export const postProyecto = async(req,res)=>{
    try{
        const {nombreP, descripcion, mineral_id,
             pozo_id,solicitud_id
        } = req.body;
                await pool.query(`CALL proyecto_nuevo($1,$2,$3,$4,$5,ARRAY[1],ARRAY[1])`,[
                    nombreP, descripcion, mineral_id, pozo_id, solicitud_id]);
											
        return res.status(201).json('Se creo con exito');
    }catch(error){
        return res.status(500).json(error);
    }
}

export const putEstatusProyecto = async(req,res)=>{
    try{
    const {proyecto_id, estatusP} = req.body;

    await pool.query('CALL cambiar_estatus_proyecto($1,$2)',[proyecto_id,estatusP]);

    return res.status(200).json('Se ha cambiado el estatus');
    }catch(error){
        return res.status(500).json(error);
    }
}

export const getSolicitudesPendiente = async(req,res)=>{
    try{
        const {offset} = req.params
        const {rows} = await pool.query(`SELECT sc.factura_cli_id as id_solicitud,
                                sc.factura_fk_cl_identificacion AS identificacion, sc.factura_min_id AS mineral,
                                e.est_nombre AS estatus, sc.factura_cli_cantidad AS cantidad,
                                sc.factura_cli_total AS total, sc.factura_cli_fecha AS fecha,
                                c.cl_p_nombre AS nombre, c.cl_p_apellido AS apellido
                            FROM solicitud_cliente sc
                            JOIN est_sol_cliente est ON sc.factura_cli_id = est.escl_fk_sol_cliente
                            JOIN estatus e ON e.est_id = est.escl_fk_est_id
                            JOIN cliente c ON sc.factura_fk_cl_identificacion = c.cl_identificacion
                            WHERE e.est_nombre = 'Pendiente'
                            AND NOT EXISTS (
                                        SELECT 1
                                        FROM est_sol_cliente es
                                        WHERE es.escl_fk_sol_cliente = sc.factura_cli_id
                        AND es.escl_fk_est_id = (SELECT est_id FROM estatus WHERE est_nombre = 'Atendida'))
                        limit 5 offset $1
                        `, [offset]);

            return res.status(200).json(rows);
    }catch(error){
        return res.status(500).json(error);
    }
}

export const getPozosDisponibles = async(req,res)=>{
    try{
        const {offset, id_min} = req.params;
        const {rows} = await pool.query(`select m.min_nombre as mineral, mp.*, e.est_nombre as estatus
	                                from mineral m, mineral_pozo mp, pozo p, pozo_estatus pe, estatus e
                                    where m.min_id = mp.min_id AND p.po_id = mp.po_id
                                    AND p.po_id = pe.poes_po_id
                                    AND pe.poes_est_id = e.est_id
                                    AND e.est_nombre = 'Disponible'
                                    AND mp.min_id = $1
                                    limit 5 offset $2
                                    `,[id_min, offset]);

        return res.status(200).json(rows);
    }catch(error){
        return res.status(500).json(error);
    }
}

export const deleteProyecto = async(req,res)=>{
    try{
        const {proyecto_id} = req.body;

        await pool.query(`CALL eliminar_proyecto($1)`,[proyecto_id]);

        return res.status(200).json('Proyecto eliminado con exito');
    }catch(error){
        return res.status(500).json(error);
    }
}