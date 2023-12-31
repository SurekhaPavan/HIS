select * from medicalrecord;
alter table medicalrecord
modify column Prescription Varchar(200);
INSERT INTO MedicalRecord (RecordId, PatientId, DoctorId, Date, Diagnosis, Prescription)VALUES
(1, 'P001', 'D001', '2023-12-01', 'Hypertension', 'Prescribed beta blockers and advised regular exercise for hypertension management'),
(2, 'P003', 'D002', '2023-12-02', 'Ear Infections', 'Prescribed antibiotics and recommended ear drops for ear infection treatment'),
(3, 'P005', 'D003', '2023-12-03', 'Osteoarthritis', 'Prescribed NSAIDs and recommended weight loss for osteoarthritis management'),
(4, 'P007', 'D004', '2023-12-04', 'Acne Vulgaris', 'Prescribed topical retinoids and recommended gentle cleansing for acne vulgaris'),
(5, 'P009', 'D005', '2023-12-05', 'Migraine', 'Prescribed triptans and advised trigger avoidance for migraine management'),
(6, 'P011', 'D006', '2023-12-06', 'Menstrual Disorders', 'Prescribed hormonal therapy and recommended lifestyle changes for menstrual disorders'),
(7, 'P013', 'D007', '2023-12-07', 'Breast Cancer', 'Prescribed chemotherapy and scheduled radiation therapy sessions for breast cancer treatment'),
(8, 'P015', 'D008', '2023-12-08', 'Depression', 'Prescribed SSRIs and referred for cognitive behavioral therapy for depression'),
(9, 'P017', 'D009', '2023-12-09', 'Prostate Cancer', 'Prescribed androgen deprivation therapy and scheduled regular PSA tests for prostate cancer'),
(10, 'P019', 'D010', '2023-11-10', 'Type 2 Diabetes', 'Prescribed oral antidiabetic medications and advised carbohydrate counting for diabetes management'),
(11, 'P021', 'D011', '2023-11-11', 'Rheumatoid Arthritis', 'Prescribed DMARDs and recommended joint protection exercises for rheumatoid arthritis'),
(12, 'P023', 'D012', '2023-11-12', 'Tooth Decay', 'Filled cavities and provided oral hygiene instructions for tooth decay prevention'),
(13, 'P025', 'D013', '2023-11-13', 'Gastric Ulcer', 'Prescribed proton pump inhibitors and recommended avoidance of spicy foods for gastric ulcer'),
(14, 'P027', 'D014', '2023-11-14', 'Asthma', 'Prescribed inhaler and recommended peak flow monitoring for asthma control'),
(15, 'P029', 'D015', '2023-11-15', 'Melanoma', 'Performed wide excision surgery and referred for lymph node biopsy for melanoma treatment'),
(16, 'P031', 'D001', '2023-11-16', 'Atrial Fibrillation', 'Administered antiarrhythmic medications and recommended heart rate monitoring for atrial fibrillation'),
(17, 'P033', 'D002', '2023-11-17', 'Allergies', 'Prescribed antihistamines and advised allergen avoidance for allergy management in children'),
(18, 'P035', 'D003', '2023-11-18', 'Spinal Stenosis', 'Performed laminectomy surgery and prescribed physical therapy for spinal stenosis'),
(19, 'P037', 'D004', '2023-12-19', 'Eczema', 'Prescribed corticosteroid creams and advised moisturizing routines for eczema'),
(20, 'P039', 'D005', '2023-11-20', 'Epilepsy', 'Prescribed antiepileptic drugs and recommended regular sleep patterns for epilepsy control'),
(21, 'P041', 'D006', '2023-11-21', 'Ovarian Cyst', 'Prescribed pain relievers and advised watchful waiting for small ovarian cysts'),
(22, 'P043', 'D007', '2023-11-22', 'Lung Cancer', 'Prescribed targeted therapy drugs and advised pulmonary rehabilitation for lung cancer'),
(23, 'P045', 'D008', '2023-11-23', 'Anxiety Disorders', 'Prescribed benzodiazepines and recommended exposure therapy for anxiety disorders'),
(24, 'P047', 'D009', '2023-11-24', 'Kidney Stones', 'Prescribed alpha blockers and recommended increased fluid intake for kidney stone passage'),
(25, 'P049', 'D010', '2023-11-25', 'Thyroid Disorders', 'Prescribed levothyroxine and recommended iodine-rich diet for thyroid disorders'),
(26, 'P051', 'D011', '2023-11-26', 'Lupus', 'Prescribed immunosuppressive drugs and advised sun protection for lupus management'),
(27, 'P053', 'D012', '2023-11-27', 'Gingivitis', 'Performed deep cleaning and prescribed antibacterial mouthwash for gingivitis treatment'),
(28, 'P055', 'D013', '2023-11-28', 'Irritable Bowel Syndrome', 'Prescribed antispasmodic medications and recommended fiber supplements for IBS management'),
(29, 'P057', 'D014', '2023-11-29', 'Chronic Obstructive Pulmonary Disease', 'Prescribed bronchodilators and advised pulmonary rehabilitation for COPD'),
(30, 'P059', 'D015', '2023-11-30', 'Basal Cell Carcinoma', 'Performed Mohs surgery and recommended regular skin checks for basal cell carcinoma'),
(31, 'P061', 'D001', '2023-12-01', 'Coronary Artery Disease', 'Performed angioplasty and stent placement, prescribed statins for coronary artery disease'),
(32, 'P063', 'D002', '2023-12-02', 'Childhood Obesity', 'Developed personalized diet and exercise plans for childhood obesity management'),
(33, 'P065', 'D003', '2023-12-03', 'Rotator Cuff Tear', 'Performed arthroscopic repair and recommended shoulder strengthening exercises for rotator cuff tear'),
(34, 'P067', 'D004', '2023-12-04', 'Psoriasis', 'Administered phototherapy sessions and prescribed vitamin D analogs for psoriasis treatment'),
(35, 'P069', 'D005', '2023-12-05', 'Multiple Sclerosis', 'Prescribed disease-modifying therapies and recommended physical therapy for multiple sclerosis'),
(36, 'P071', 'D006', '2023-12-06', 'Endometriosis', 'Performed laparoscopic surgery and prescribed hormonal therapy for endometriosis treatment'),
(37, 'P073', 'D007', '2023-12-07', 'Colon Cancer', 'Performed surgical resection and prescribed adjuvant chemotherapy for colon cancer'),
(38, 'P075', 'D008', '2023-12-08', 'Bipolar Disorder', 'Prescribed mood stabilizers and scheduled regular counseling sessions for bipolar disorder'),
(39, 'P077', 'D009', '2023-12-09', 'Urinary Tract Infections', 'Prescribed antibiotics and advised urinary hygiene for UTI treatment'),
(40, 'P079', 'D010', '2023-12-10', 'Polycystic Ovary Syndrome', 'Prescribed hormonal contraceptives and advised weight loss for PCOS management');

