import express, { type Request, type Response } from 'express';
import { container } from '../utils/inversify-orchestrator.js';
import { type Logger } from '../utils/logger.js';
import { TYPES } from '../utils/types.js';
import { QueryTypes, Sequelize } from 'sequelize';
import { Doctor } from '../classes/doctor.js';

const doctorsRouter = express.Router();
const logger = container.get<Logger>(TYPES.Logger);
const dbConnection = container.get<Sequelize>(TYPES.DbConnection);

doctorsRouter.get('/doctors', async (_req: Request, res: Response) => {
  try {
    const email = _req.query.email;
    let filter = '';
    
    if (email) {
      filter = `where Email = '${email}'`;
    }
    const results: Array<Doctor> = await dbConnection.query(`select * from doctor ${filter}`, { type: QueryTypes.SELECT });

    const doctors = results.map(d => {
      return {
        DoctorId: d.DoctorId,
        DoctorName: `${d.DoctorFName} ${d.DoctorLName}`,
        Specialization: d.Specialization,
        Phone: d.Phone,
        Email: d.Email
      };
    });

    res.header('Content-type', 'application/json').status(200).send(JSON.stringify(doctors, null, 4));
  } catch (err: any) {
    res.status(500).send('Error occurred');
    logger.error('Error occurred', err.message);
  }
});

doctorsRouter.get('/doctors/:id', async (_req: Request, res: Response) => {
  try {
    const results: Array<Doctor> = await dbConnection.query(`select * from doctor where DoctorId = '${_req.params.id}'`, { type: QueryTypes.SELECT });

    if (results.length > 0) {
      const doctor = results[0];

      res.header('Content-type', 'application/json').status(200).send(JSON.stringify({
        DoctorId: doctor.DoctorId,
        DoctorName: `${doctor.DoctorFName} ${doctor.DoctorLName}`,
        Specialization: doctor.Specialization,
        Phone: doctor.Phone,
        Email: doctor.Email
      }, null, 4));
    } else {
      res.header('Content-type', 'application/json').status(404).send();
    }
  } catch (err: any) {
    res.status(500).send('Error occurred');
    logger.error('Error occurred', err.message);
  }
});

doctorsRouter.post('/doctors', async (_req: Request, res: Response) => {
  try {
    const doctor: Doctor = _req.body;

    await dbConnection.query(`INSERT INTO Doctor (DoctorId, DoctorFName, DoctorLName, Specialization, Phone, Email) VALUES 
    ('${doctor.DoctorId}', '${doctor.DoctorFName}', '${doctor.DoctorLName}', '${doctor.Specialization}', '${doctor.Phone}', '${doctor.Email}')`,
     { type: QueryTypes.INSERT });

    res.header('Content-type', 'application/json').status(200).send(JSON.stringify({'Status': 'Success'}, null, 4));
  } catch (err: any) {
    res.status(500).send('Error occurred');
    logger.error('Error occurred', err.message);
  }
});

export default doctorsRouter;
