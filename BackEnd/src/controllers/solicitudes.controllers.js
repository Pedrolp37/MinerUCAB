import {pool} from '../databases/BD_Connection.js';


export const postSolicitudCliente = async(req,res) =>{
    try{   
        const {id_cliente,denominacion,num_transferencia,num_cheque,num_tarjetaTDD,tdd_vencimiento,num_tarjetaTDC,
            tdc_vencimiento,tipo_metodoP,
            mineral_id, cantidad,obs} = req.body;
            console.log(req.body)
        const result = await pool.query(`select * from agregar_metodo ($1,$2,$3,$4,$5,$6,$7,$8,$9)
                                        `,[id_cliente,denominacion,num_transferencia,num_cheque,num_tarjetaTDD,tdd_vencimiento,num_tarjetaTDC,
                                            tdc_vencimiento,tipo_metodoP]);
          
       
          const metodoId = result.rows[0].agregar_metodo;
            
               await pool.query('CALL insertar_sol_cliente($1::VARCHAR,$2::INT,$3::INT,$4::VARCHAR,$5::INT)',[id_cliente,mineral_id,cantidad,obs,
                                                                                metodoId]); 

        return res.status(200).json({ message: 'Solicitud generada correctamente' });

    }catch(error){
        return res.status(500).json(error);
    }
}

export const postSolicitudAliado = async(req,res)=>{
    try{

        const {id_cliente,denominacion,num_transferencia,num_cheque,num_tarjetaTDD,tdd_vencimiento,num_tarjetaTDC,
            tdc_vencimiento,tipo_metodoP,rif, proyecto_id, mineral_id,
            recurso_id, cargo_id, cantidad, obs
        } = req.body;

        const result = await pool.query(`select * from agregar_metodo ($1,$2,$3,$4,$5,$6,$7,$8,$9)
            `,[id_cliente,denominacion,num_transferencia,num_cheque,num_tarjetaTDD,tdd_vencimiento,num_tarjetaTDC,
                tdc_vencimiento,tipo_metodoP]);

            const metodoId = result.rows[0].agregar_metodo;
                console.log(metodoId);
            await pool.query('CALL insertar_sol_aliado($1,$2,$3,$4,$5,$6,$7,$8)',
                                                        [rif,proyecto_id,mineral_id,recurso_id,cargo_id,
                                                        cantidad,obs,metodoId]);

      return res.status(200).json({ message: 'Solicitud generada correctamente' });
    }catch(error){
        return res.status(500).json(error);
    }
}

export const putSolicitudAliado = async (req,res)=>{
    try{
        const {solicitud_id, cantidad, mineral_id} = req.body;
       
        await pool.query('CALL actualizar_sol_aliado($1,$2,$3)',[solicitud_id, cantidad, mineral_id])

        return res.status(200).json({ message: 'Solicitud actualizada correctamente' });
    }catch(error){
        return res.status(500).json(error);
    }
}

export const getSolicitudAliado = async(req,res)=>{
    try{
        const {rows} = await pool.query(`SELECT sa.factura_fk_ali_rif AS RIF, sa.factura_ali_min_id AS de_mineral,
                                sa.factura_ali_tire_id AS de_recurso, sa.factura_ali_carg_id AS de_cargo,
                                e.est_nombre AS estatus, sa.factura_ali_cantidad AS cantidad,
                                sa.factura_ali_total AS total, sa.factura_ali_fecha
                            FROM solicitud_aliado sa
                            JOIN est_solicitud est ON sa.factura_ali_id = est.est_sol_fk_sol_ali
                            JOIN estatus e ON e.est_id = est.est_sol_fk_est_id
                            WHERE (est.est_sol_id) IN 
                                                (SELECT est_sol_id
                                                FROM est_solicitud es
	                                            where es.est_sol_fk_sol_ali = sa.factura_ali_id
	                                            order by est_sol_id DESC
	                                            limit 1)`);

        return res.status(200).json(rows);                                        
    }catch(error){
        return res.status(500).json(error);
    }
}