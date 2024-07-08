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
        const {offset} = req.params
        const {rows} = await pool.query(`SELECT ac.ali_nombre AS Aliado,
                            m.min_nombre AS mineral,
                            sa.factura_ali_tire_id AS de_recurso,
                            sa.factura_ali_carg_id AS de_cargo,
                            e.est_nombre AS estatus,
                            sa.factura_ali_cantidad AS cantidad,
                            sa.factura_ali_total AS total,
                            to_char(sa.factura_ali_fecha, 'dd-mm-yyyy') as factura_ali_fecha,
                            sa.factura_ali_id,
							 sa.factura_ali_min_id
                        FROM solicitud_aliado sa
                        JOIN est_solicitud est ON sa.factura_ali_id = est.est_sol_fk_sol_ali
                        JOIN estatus e ON e.est_id = est.est_sol_fk_est_id
                        JOIN mineral m ON m.min_id = sa.factura_ali_min_id
                        JOIN aliado_comercial ac ON ac.ali_rif = sa.factura_fk_ali_rif
                        WHERE (est.est_sol_id) IN (
                                        SELECT est_sol_id
                                        FROM est_solicitud es
	                                    where es.est_sol_fk_sol_ali = sa.factura_ali_id
	                                    order by est_sol_id DESC
	                                    limit 1)
                        limit 5 offset $1
                                        `, [offset]);

        return res.status(200).json(rows);                                        
    }catch(error){
        return res.status(500).json(error);
    }
}

export const getSolicitudCliente = async(req,res)=>{
    try{
        const {offset}  = req.params
        const {rows} = await pool.query(`select sc.factura_fk_cl_identificacion AS identificacion, sc.factura_min_id AS mineral,
	                                    e.est_nombre AS estatus, sc.factura_cli_cantidad AS cantidad, sc.factura_cli_total AS total,
		                                to_char(sc.factura_cli_fecha, 'dd-mm-yyyy') AS fecha,
		                                c.cl_p_nombre AS nombre, c.cl_p_apellido AS apellido
                                    FROM solicitud_cliente sc
                                    JOIN est_sol_cliente est ON sc.factura_cli_id = est.escl_fk_sol_cliente
                                    JOIN estatus e ON e.est_id = est.escl_fk_est_id
									JOIN cliente c ON sc.factura_fk_cl_identificacion = c.cl_identificacion
                                    WHERE est.escl_id IN (
	                                                        SELECT es.escl_id
	                                                        FROM est_sol_cliente es
	                                                        WHERE es.escl_fk_sol_cliente = sc.factura_cli_id
	                                                        order by escl_id ASC
	                                                        limit 1)
                                    limit 5 offset $1
                                                            `, [offset]);

        return res.status(200).json(rows);
    }catch(error){
        return res.status(500).json(error);
    }
}

export const getPago = async(req,res)=>{
    try{
       const {id} = req.params;
       
      const {rows} = await pool.query(`select factura_fk_ali_rif as rif, p.pago_monto as monto, to_char(p.pago_fecha, 'dd-mm-yyyy') as f_pago,
		                        mp.tipo_metodo as metodo
	                        from solicitud_aliado sa, pago p, metodo_pago mp
                            where p.pago_fk_sol_ali = $1
                            AND p.pago_fk_met_id = mp.met_id`,[id]);

      return res.status(200).json(rows);
    }catch(error){
        return res.status(500).json(error);
    }
}