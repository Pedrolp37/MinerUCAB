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
        
    }catch(error){
        return res.status(500).json(error);
    }
}