import {pool} from '../databases/BD_Connection.js';


export const postSolicitudCliente = async(req,res) =>{
    try{   
        const {id_cliente,denominacion,num_transferencia,num_cheque,num_tarjetaTDD,tdd_vencimiento,num_tarjetaTDC,
            tdc_vencimiento,tipo_metodoP} = req.body;
        const result = await pool.query(`select * from obtener_metodo_id ($1,$2,$3,$4,$5,$6,$7,$8,$9)
                                        `,[id_cliente,denominacion,num_transferencia,num_cheque,num_tarjetaTDD,tdd_vencimiento,num_tarjetaTDC,
                                            tdc_vencimiento,tipo_metodoP]);
          //  await pool.query('')
        console.log(result);
          const metodoId = result.rows[0].obtener_metodo_id;

        // Usa el ID como necesites en tu lógica de front-end
        // ...

        return res.status(200).json({ metodoId });
    }catch(error){
        return res.status(500).json(error);
    }
}