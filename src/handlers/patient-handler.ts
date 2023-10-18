import express, { type Request, type Response } from 'express';
import { container } from '../utils/inversify-orchestrator.js';
import { type Logger } from '../utils/logger.js';
import { TYPES } from '../utils/types.js';
import { QueryTypes, Sequelize } from 'sequelize';
import { Patient } from '../classes/patient.js';

const patientsRouter = express.Router();
const logger = container.get<Logger>(TYPES.Logger);
const dbConnection = container.get<Sequelize>(TYPES.DbConnection);

patientsRouter.get('/patients', async (_req: Request, res: Response) => {
  try {
    const email = _req.query.email;
    let filter = '';
    
    if (email) {
      filter = `where Email = '${email}'`;
    }
    const results: Array<Patient> = await dbConnection.query(`select * from patient ${filter}`, { type: QueryTypes.SELECT });

    const patients = results.map(p => {
      return {
        PatientId: p.PatientId,
        PatientName: `${p.PatientFName} ${p.PatientLName}`,
        DateOfBirth: p.DateOfBirth,
        Gender: p.Gender,
        Phone: p.Phone,
        Email: p.Email
      };
    });

    res.header('Content-type', 'application/json').status(200).send(JSON.stringify(patients, null, 4));
  } catch (err: any) {
    res.status(500).send('Error occurred');
    logger.error('Error occurred', err.message);
  }
});

patientsRouter.get('/patients/:id', async (_req: Request, res: Response) => {
  try {
    const results: Array<Patient> = await dbConnection.query(`select * from patient where PatientId = '${_req.params.id}'`, { type: QueryTypes.SELECT });

    if (results.length > 0) {
      const patient = results[0];

      res.header('Content-type', 'application/json').status(200).send(JSON.stringify({
        PatientId: patient.PatientId,
        PatientName: `${patient.PatientFName} ${patient.PatientLName}`,
        DateOfBirth: patient.DateOfBirth,
        Gender: patient.Gender,
        Phone: patient.Phone,
        Email: patient.Email
      }, null, 4));
    } else {
      res.header('Content-type', 'application/json').status(404).send();
    }
  } catch (err: any) {
    res.status(500).send('Error occurred');
    logger.error('Error occurred', err.message);
  }
});

export default patientsRouter;
