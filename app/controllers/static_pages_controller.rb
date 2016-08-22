class StaticPagesController < ApplicationController
  def welcome
  end

  def about
    @david_moss =    ["David Moss, MD",                     "https://www.tuftsmedicalcenter.org/PhysicianDirectory/David-Moss.aspx"]
    @tufts_medical = ["Tufts Medical Center",               "https://www.tuftsmedicalcenter.org"]
    @floating =      ["The Floating Hospital for Children", "https://www.floatinghospital.org"]
  end

  def feedback
    @feedback =   ["anesthesiahub@gmail.com", "mailto:anesthesiahub@gmail.com"]
  end
  
  def secret
  end

  def tools
    @acls_algos = [
      ["BLS Algorthim",               "https://eccguidelines.heart.org/wp-content/uploads/2015/09/BLS-Adult-Cardiac-Arrest-Algorithm---2015-Update.png"],
      ["Cardiac Arrest Cycle",        "https://eccguidelines.heart.org/wp-content/uploads/2015/10/2010-Integrated_Updated-Circulation-ACLS-Cardiac-Arrest-Circular-Algorithm.png"],
      ["Cardiac Arrest Algortihm",    "https://eccguidelines.heart.org/wp-content/uploads/2015/10/ACLS-Cardiac-Arrest-Algorithm.png"],
      ["5 H's & 5 T's",               "https://eccguidelines.heart.org/index.php/tables/2010-treatable-causes-of-cardiac-arrest-the-hs-and-ts/"],
      ["Bradycardia (with pulse)",    "https://eccguidelines.heart.org/wp-content/uploads/2015/10/2010-Integrated_Updated-Circulation-ACLS-Bradycardia-Algorithm.png"],
      ["Tachycardia (with pulse)",    "https://eccguidelines.heart.org/wp-content/uploads/2015/10/2010-Integrated_Updated-Circulation-ACLS-Tachycardia-Algorithm.png"],
      ["Acute Coronary Syndrome",     "https://eccguidelines.heart.org/wp-content/uploads/2015/10/2010-Integrated_Updated-Circulation-ACLS-Acute-Coronary-Syndromes-Algorithm.png"],
      ["Suspected Stroke",            "http://crashingpatient.com/wp-content/images/acls/stroke.jpeg"],
      ["Opioid-associated Emergency", "https://eccguidelines.heart.org/wp-content/uploads/2015/10/BLS-Opioid-Associated-Emergency-Algorithm.png"],
      ["Cardiac Arrest in Pregnancy", "http://crashingpatient.com/wp-content/images/acls/maternal%20card.jpeg"]
    ]

    @pals_algos = [
      ["BLS Algorithm (single rescuer)", "https://eccguidelines.heart.org/wp-content/uploads/2015/10/BLS-Pediatric-Cardiac-Arrest-Single-Rescuer-Algorithm.png"],
      ["BLS Algortihm (2+ rescuers)", "https://eccguidelines.heart.org/wp-content/uploads/2015/10/BLS-Pediatric-Cardiac-Arrest-2-or-More-Rescuers-Algorithm.png"],
      ["Cardiac Arrest Algorithm", "https://eccguidelines.heart.org/wp-content/uploads/2015/10/PALS-Cardiac-Arrest-Algorithm.png"],
      ["Bradycardia (with pulse)", "https://eccguidelines.heart.org/wp-content/uploads/2015/10/Pediatric-Bradycardia-With-a-Pulse-and-Poor-Perfusion-Algorithm.png"],
      ["Tachycardia (with pulse)", "https://eccguidelines.heart.org/wp-content/uploads/2015/09/Pediatric-Tachycardia-With-a-Pulse-and-Poor-Perfusion-Algorithm.png"],
      ["Neonatal Resuscitation",    "https://eccguidelines.heart.org/wp-content/uploads/2015/10/Neonatal-Resuscitation-Algorithm.png"],
    ]

    @critical_events = [
      ["Difficult Airway Algorithm (2013)", "Airway.jpg"],
      ["Anaphylaxis",                "Anaphylaxis.jpg"],
      ["Local Anesthetic Toxity (ASRA)",  "https://www.asra.com/content/documents/checklist-for-local-anesthetic-toxicity-treatment-1-18-12.pdf"],
      ["Pediatric Critical Events",  "http://www.pedsanesthesia.org/newnews/Critical_Event_Checklists.pdf?201310291500"],
      ["Laryngospasm",               "http://www.maskinduction.com/uploads/3/1/6/4/31643965/laryngospasm_management_algorithm.pdf"]   
    ]
    
    @anatomy = [
      ["Bronchoscopy",               "http://www.bronchoscopy.org/downloads/posters/StepByStepPoster.pdf"],
      ["Brachial Plexus",            "http://anatomyandart.com/blog/wp-content/uploads/2009/08/brachial_plexus11.jpg"],
      ["Lumbar Plexus",              "http://en.wikipedia.org/wiki/Lumbar_plexus#mediaviewer/File:Lumbar_plexus.svg"],
      ["Vertebral Body",             "http://en.wikipedia.org/wiki/Vertebral_column#mediaviewer/File:718_Vertebra.jpg"]
    ]

    @guidelines = [
      ["ACC/AHA 2014 Preop Testing", "http://circ.ahajournals.org/content/early/2014/07/31/CIR.0000000000000106.full.pdf"],
      ["ASA Consensus Statement on ICDs/Pacemakers", "http://www.hrsonline.org/content/download/1432/20125/file/2011-HRS_ASA%20Perioperative%20Management.pdf"],
      ["Machine Checkout Recommendations", "https://www.asahq.org/~/media/sites/asahq/files/public/resources/clinical-resources/finalcheckoutdesignguidelines.pdf"],
      ["SCA Clinical Practice & Guidelines", "http://www.scahq.org/ClinicalPracticeGuidelines/Guidelines.aspx"],
      ["Endocarditis Prophylaxis",   "endocarditis.jpg"],
      ["Difficult Airway Society",    "http://www.das.uk.com/guidelines"],
      ["ASRA Neuraxial Anticoags",   "https://kr.ihc.com/ext/Dcmnt?ncid=520499512&tfrm=default"],
      ["ASA Guidelines",             "http://www.asahq.org/quality-and-practice-management/standards-and-guidelines"],
      ["Sedation and Anesthesia in GI Endoscopy", "http://www.asge.org/uploadedFiles/Publications_and_Products/Practice_Guidelines/Sedation%20and%20Anesthesia%20in%20GI%20Endoscopy%202008.pdf"]
    ]

    @drug_dosing = [
      ["Narcotic Equivalence Converter", "http://medcalc.com/narcotics.html"],
      ["Steroid Equivalence Converter",  "http://www.medcalc.com/steroid.html"],
      ["PALS Drugs",                  "https://eccguidelines.heart.org/index.php/tables/2010-medications-for-pediatric-resuscitation/"],
      ["Peds Anesthesia Drugs",       "http://anesthesia.stonybrook.edu/teaching/peds-drug-dosages"],
      ["Peds Anesthesia Pocket Ref",  "http://pedianesthesia.ucsf.edu/pdf_pedirefcard.pdf"],
      ["Periop Antibiotic Dosing",    "http://www.ashp.org/DocLibrary/BestPractices/TGSurgery.aspx"],
      ["PONV Prophylaxis",            "PONV.jpg"],
    ]

    @calculators = [
      ["Arterial Blood Gas Analyzer",    "http://www.mdcalc.com/arterial-blood-gas-abg-analyzer/"],
      ["Society of Thoracic Surgeons Cardiac Surgery Risk", "http://riskcalc.sts.org/stswebriskcalc/#/calculate"],
      ["Gupta Perioperative Cardiac Risk", "http://www.qxmd.com/calculate-online/cardiology/gupta-perioperative-cardiac-risk"],
      ["NSQIP Surgical Risk Calculator", "http://riskcalculator.facs.org"],
      ["Apgar Score",                    "http://www.mdcalc.com/apgar-score/"],
      ["Surgical Apgar Score",           "http://www.mdcalc.com/surgical-apgar-score-sas-post-operative-risk/"],
      ["MELD Score",                     "http://www.mdcalc.com/meld-score-model-for-end-stage-liver-disease-12-and-older/"],
      ["Child-Pugh Score",               "http://www.mdcalc.com/child-pugh-score-for-cirrhosis-mortality/"],
      ["Injury Severity Score (ISS)",    "http://www.mdcalc.com/injury-severity-score-iss/"],
      ["Allowable Blood Loss",           "http://easycalculation.com/medical/allowable-blood-loss.php"],
      ["Parkland Formula",               "http://www.mdcalc.com/parkland-formula-for-burns/"],
      ["Glascow Coma Scale",             "http://www.mdcalc.com/glasgow-coma-scale-score/"],
      ["APACHE II",                      "http://www.mdcalc.com/apache-ii-score-for-icu-mortality/"],
      ["BMI / BSA",                      "http://www.mdcalc.com/bmi-and-body-surface-area-bsa/"],
      ["Ideal Body Weight",              "http://www.mdcalc.com/ideal-body-weight/"],
      ["STOPBang (OSA)",                 "http://www.stopbang.ca/osa/screening.php"],
      ["A-a Gradient",                   "http://www.mdcalc.com/a-a-o2-gradient/"],
      ["Cockgroft-Gault CrCl",           "http://www.mdcalc.com/creatinine-clearance-cockcroft-gault-equation/"],
      ["Pediatric Endotracheal Tube Size",  "http://www.mdcalc.com/endotracheal-tube-ett-size-for-pediatrics/"],
    ]
  end

  def writtens
    @basic = ["BASIC", "http://www.theaba.org/Exams/BASIC-(Staged-Exam)/About-BASIC-(Staged-Exam)"]
    @advanced = ["ADVANCED", "http://www.theaba.org/Exams/ADVANCED-(Staged-Exam)/About-ADVANCED-(Staged-Exam)"]
    @basicq = ["BASIC", "http://www.theaba.org/PDFs/BASIC-Exam/BASIC-Sample-Questions"]
    @advancedq = ["ADVANCED", "http://www.theaba.org/PDFs/ADVANCED-Exam/ADVANCED-Sample-Questions"]
    @part1 = ["Part 1", "http://www.theaba.org/Exams/Traditional-Part-1/About-Traditional-Part-1"]
    @part2 = ["Part 2", "http://www.theaba.org/Exams/Traditional-Part-2/About-Traditional-Part-2"]
    @staged = ["Staged Exams", "http://www.theaba.org/PDFs/BOI/StagedExaminations-BOI"]
    @old_aba_exams = ["1990-1996 In-training Examinations", "http://www.theaba.org/TRAINING-PROGRAMS/In-training-Exam/Previous-Exams"]
    @aba_training_programs = ["here", "http://www.theaba.org/Home/TrainingPrograms"]
    @aba_content_outline = ["content outline", "http://www.theaba.org/PDFs/BASIC-Exam/Basic-and-Advanced-ContentOutline"]
    @gaps = ["Gaps in Knowledge", "http://www.theaba.org/PDFs/ITE-Exam/ITE-Gaps-in-Knowledge-Report.pdf"]
    @aba_exam_summary = ["2014 Exam Summary (PDF)", "http://www.theaba.org/pdf/SAAA-Exams-Report.pdf"]
    @open_anesthesia_keywords = ["Open Anesthesia", "http://www.openanesthesia.org/OpenAnesthesia.org:KeywordBrowser"]
    @kentucky_keywords = ["keyword review lecture series", "https://www.youtube.com/playlist?list=PLh0m5d4Yfc8zuGHKyc0UdaUAPqNLUOqnT"]
    @mathps = "/AnesthesiaMath-PS.pdf"
    @mathsol = "/AnesthesiaMath-S.pdf"
    @study_strategy = [
      ["Studying for ITE (7/16)",                          "http://forums.studentdoctor.net/threads/studying-for-ite.1210873/"],
      ["Basic exam 2016 (6/16)",                           "http://forums.studentdoctor.net/threads/basic-exam-2016.1205018/"],
      ["ABA BASIC STUDY TIPS (4/16)",                      "http://forums.studentdoctor.net/threads/aba-basic-study-tips.1193899/"],
      ["ITE 2016 (4/16)",                                  "http://forums.studentdoctor.net/threads/ite-2016.1191823/"],
      ["ABA exam part 1 advice (2/16)",                    "http://forums.studentdoctor.net/threads/aba-exam-part-1-advice.1182799/"],
      ["M5 Correlation to ITEs (1/16)",                    "http://forums.studentdoctor.net/threads/m5-correlation-to-ites.1180566/"],
      ["Qbank structure -- trying to decide which to buy. (1/16)", "http://forums.studentdoctor.net/threads/qbank-structure-trying-to-decide-which-to-buy.1176863/"],
      ["ITE exam prep for rookies (10/15)",                "http://forums.studentdoctor.net/threads/ite-exam-prep-for-rookies.1164173/"],
      ["Basic Exam Stats (2015) (8/15)",                   "http://forums.studentdoctor.net/threads/basic-exam-stats-2015.1156315/"],
      ["ABA exam - written (7/15)",                        "http://forums.studentdoctor.net/threads/aba-exam-written.1153111/"],
      ["TrueLearn Question Bank (4/15)",                   "http://forums.studentdoctor.net/threads/truelearn-question-bank.1130074/"],
      ["ABA Basic Exam 2015 (4/15)",                       "http://forums.studentdoctor.net/threads/aba-basic-exam-2015.1132719/"],
      ["How to kill basic science/ite exams? (2/15)",      "http://forums.studentdoctor.net/threads/how-to-kill-basic-science-ite-exams.1123216/"],
      ["2015 In Training Exam (2/15)",                     "http://forums.studentdoctor.net/threads/2015-in-training-exam.1122186/"],
      ["Trulearn ITE question bank, predicted score (1/15)?", "http://forums.studentdoctor.net/threads/trulearn-ite-question-bank-predicted-score.1117676/"],
      ["Anesthesia Q Bank (1/15)",                         "http://forums.studentdoctor.net/threads/anesthesia-q-bank.1115732/"],
      ["ABA Basic Exam (11/14)",                           "http://forums.studentdoctor.net/threads/aba-basic-exam.1106106/"],
      ["Best Review Book for Written Boards (9/14)",       "http://forums.studentdoctor.net/threads/best-review-book-for-written-boards.1098134/"],
      ["Boards (7/14)",                                    "http://forums.studentdoctor.net/threads/boards.1088912/"],
      ["ABA Released Questions (7/14)",                    "http://forums.studentdoctor.net/threads/aba-released-questions.1086157/"],
      ["How are YOU studying for the ABA Basic Exam? (6/14)", "http://forums.studentdoctor.net/threads/how-are-you-studying-for-the-aba-basic-exam.1079879/"],
      ["Jensen board course (3/14)",                       "http://forums.studentdoctor.net/threads/jensen-board-course.1062646/"],
      ["ITE 2014 (2/14)",                                  "http://forums.studentdoctor.net/threads/ite-2014.1056691/"],
      ["Hall vs M5 Review Questions (12/13)",              "http://forums.studentdoctor.net/threads/hall-vs-m5-review-questions.1045795/"],
      ["Question: best written board review (3/13)",       "http://forums.studentdoctor.net/threads/question-best-written-board-review.994017/"],
      ["Question Bank for the ITE (2/13)",                 "http://forums.studentdoctor.net/threads/question-bank-for-the-ite.981534/"],
      ["Big Blue necessary for the Jensen course? (4/12)", "http://forums.studentdoctor.net/threads/big-blue-necessary-for-the-jensen-course.902899/"],
      ["Written board materials (12/11)",                  "http://forums.studentdoctor.net/threads/written-board-materials.876006/"],
      ["Big Blue (8/11)",                                  "http://forums.studentdoctor.net/threads/big-blue.850155/"],
      ["Big Blue is outdated (3/11)",                      "http://forums.studentdoctor.net/threads/big-blue-is-outdated.802141/"],
      ["ABA Writtens Study Tips (10/10)",                  "http://forums.studentdoctor.net/threads/aba-writtens-study-tips.771032/"],
      ["Help for ABA Written Boards (3/10)",               "http://forums.studentdoctor.net/threads/help-for-aba-written-boards.712423/"],
      ["Review Courses for Writtens (3/09)",               "http://forums.studentdoctor.net/threads/review-courses-for-writtens.622094/"],
      ["Written board prep (1/09)",                        "http://forums.studentdoctor.net/threads/written-board-prep.594054/"],
      ["Written Exam results are in! (9/08)",              "http://forums.studentdoctor.net/threads/written-exam-results-are-in.565074/"],
      ["Best Review Courses for Written Board??? (11/07)", "http://forums.studentdoctor.net/threads/best-review-courses-for-written-board.467298/"],
    ]

    @commercial_courses = [
      ["Open Anesthesiology Self-Study Qbank",           "https://www.openanesthesia.org/members/join/#qbank-only"],
      ["True Learn Anesthesiology",                      "http://www.truelearn.com/anesthesiology/"],
      ["Michael Ho: The Essential Written Board Review", "http://anconsultants.com/anesthesiology-written-board-review/"],
      ["AQB - anesthesiaQbank",                          "http://anesthesiaqbank.com"],
      ["Anesthesia Exam",                                "http://www.anesthesiaexam.com"],
      ["Beyond Anesthesia",                              "http://beyondanesthesia.com"],
      ["Core Concepts Anesthesia Review",                "http://www.ccanesthesiareview.com/QOD/QOD.asp"],
      ["Dr. Jensen Anesthesiology & Pain Board P.R.E.P", "http://www.anesthesiologyboards.com"],
      ["Gas Questions",                                  "https://www.gasquestions.com"],
      ["M5 Board Review",                                "http://m5boardreview.com"],
      ["The Pass Machine",                               "http://www.thepassmachine.com/anesthesiology-certification-exam-prep-course.html"],
    ]
  end

  def orals
    @part2 = ["part 2", "http://www.theaba.org/Exams/Traditional-Part-2/About-Traditional-Part-2"]
    @applied = ["APPLIED", "http://www.theaba.org/Exams/APPLIED-(Staged-Exam)/About-APPLIED-(Staged-Exam)"]
    @aba_archive = ["videos", 'http://www.theaba.org/TRAINING-PROGRAMS/Traditional-Part-2/Traditional-Part-2-Videos']
    @aba_videos = ["videos", 'http://www.theaba.org/ABOUT/Videos']
    @exam_hints_pdf = ["Hints for Mastering the Orals", 'http://anesthesiaboardhints.homestead.com/HintsfortheAnesthesiologyBoardExaminationRev1.6.pdf']
    @lovich = ["PowerPoint", "http://www.powershow.com/view/3c317a-MzI1Z/The_Things_I_Do_For_the_Residents_May_8_2008_Jessica_powerpoint_ppt_presentation"]
    @aba_training_programs = ["here", "http://www.theaba.org/Home/TrainingPrograms"]
    @the_anesthesia_consultant = ["The Anesthesia Consultant", 'http://theanesthesiaconsultant.com/2013/08/22/advice-for-passing-the-oral-board-exams-in-anesthesiology/']

    @study_strategy = [
      ["ABA oral boards and 10 min stem reading session (3/16)",              "http://forums.studentdoctor.net/threads/aba-oral-boards-and-10-min-stem-reading-session.1189411/"],
      ["2016 oral boards (3/16)",                                             "http://forums.studentdoctor.net/threads/2016-oral-boards.1187918/"],
      ["oral board prep advice (1/16)",                                       "http://forums.studentdoctor.net/threads/oral-board-prep-advice.1180670/"],
      ["Oral board answers that are relatively unrealistic? (8/15)",          "http://forums.studentdoctor.net/threads/oral-board-answers-that-are-relatively-unrealistic.1155448/"],
      ["Just Oral Boards.com (7/15)",                                         "http://forums.studentdoctor.net/threads/just-oral-boards-com.1154301/"],
      ["Oral Boards 2015 (2/15)",                                             "http://forums.studentdoctor.net/threads/oral-boards-2015.1121495/"],
      ["It's Time to Boycott Michael Ho's Course (11/14)",                    "http://forums.studentdoctor.net/threads/its-time-to-boycott-michael-hos-course.1108105/"],
      ["Oral Boards (8/14)",                                                  "http://forums.studentdoctor.net/threads/oral-boards.1093932/"],
      ["Just Oral Boards? (7/14)",                                            "http://forums.studentdoctor.net/threads/just-oral-boards.1082494/"],
      ["Orals 2014 'Official' Thread (4/14)",                                 "http://forums.studentdoctor.net/threads/orals-2014-official-thread.1065348/"],
      ["Which Anesthesia Oral Board Review Course? (1/14)",                   "http://forums.studentdoctor.net/threads/which-anesthesia-oral-board-review-course.1052755/"],
      ["2014 Oral Boards Study Plan (1/14)",                                  "http://forums.studentdoctor.net/threads/2014-oral-boards-study-plan.1048582/"],
      ["Oral Board Studying Tips (5/13)",                                     "http://forums.studentdoctor.net/threads/oral-board-studying-tips.1004846/"],
      ["Oral Boards: the Ho Course (12/12)",                                  "http://forums.studentdoctor.net/threads/oral-boards-the-ho-course.973389/"],
      ["Oral Boards for Dummies (10/12)",                                     "http://forums.studentdoctor.net/threads/oral-boards-for-dummies.960908/"],
      ["Just took oral board exam: Holy ... (10/12)",                         "http://forums.studentdoctor.net/threads/just-took-oral-board-exam-holy-amp.954763/"],
      ["Oral Board Course- Which One? (9/12)",                                "http://forums.studentdoctor.net/threads/oral-board-course-which-one-here-are-some-tips.952284/"],
      ["Fall Orals (8/12)",                                                   "http://forums.studentdoctor.net/threads/fall-orals.942088/"],
      ["I failed the oral boards again (5/12)",                               "http://forums.studentdoctor.net/threads/i-failed-the-oral-boards-again.914746/"],
      ["April ABA Oral Exam (3/12)",                                          "http://forums.studentdoctor.net/threads/april-aba-oral-exam.897213/"],
      ["Oral Board Prep Course (1/12)",                                       "http://forums.studentdoctor.net/threads/oral-board-prep-course.883011/"],
      ["Just Oral Boards (11/11)",                                            "http://forums.studentdoctor.net/threads/just-oral-boards.868158/"],
      ["Oral Boards: Self-Study vs Review Course (10/11)",                    "http://forums.studentdoctor.net/threads/oral-boards-self-study-vs-review-course.863807/"],
      ["Oral advice (10/11)",                                                 "http://forums.studentdoctor.net/threads/oral-advice.863646/"],
      ["Oral Board Book (10/11)",                                             "http://forums.studentdoctor.net/threads/oral-board-book.863401/"],
      ["Best Oral Boards Resource - not going to a session (7/11)",           "http://forums.studentdoctor.net/threads/best-oral-boards-resource-not-going-to-a-session.842324/"],
      ["My Oral Board Experience (5/11)",                                     "http://forums.studentdoctor.net/threads/my-oral-board-experience.822916/"],
      ["What is the best way to study for the anesthesia oral boards (5/11)", "http://forums.studentdoctor.net/threads/what-is-the-best-way-to-study-for-the-anesthesia-oral-boards.821337/"],
      ["Anesthesia Oral Board Prep (10/06)",                                  "http://forums.studentdoctor.net/threads/anesthesia-oral-board-prep.331489/"]
    ]

    @commercial_courses = [
      ["Board Stiff Live",                             "https://boardstifflive.com"],
      ["Michael Ho: The Essential Oral Board Review",  "http://anconsultants.com/anesthesiology-oral-board-review/"],
      ["Dr. Jensen Essential Oral Board P.R.E.P.",     "http://www.boardprep.com"],
      ["GadsenJones Anesthesiology Oral Board Review", "http://www.gadsdenjones.com"],
      ["Just Oral Boards",                             "http://www.justoralboards.com"],
      ["Nail the Boards",                              "http://nailtheboards.com"],
      ["AceMedBoard",                                  "http://www.acemedboard.com"],
      ["The Osler Institute",                          "http://www.osler.org/main/ane.html"],
      ["Ultimate Board Prep",                          "http://www.ultimateboardprep.com"]
    ]
  end

  def pedsboards
    @peds_cert = ["certification", "http://www.theaba.org/Exams/Pediatric-Anesthesiology/Pediatric-Anesthesiology"]
    @pedsfellowships = "http://www.pedsanesthesia.org/fellowships/"
    @nrmp = "http://www.nrmp.org/wp-content/uploads/2013/08/National-Resident-Matching-Program-NRMP-Results-and-Data-SMS-2014-Final.pdf"
    @wfsa = "http://www.wfsahq.org/resources/update-in-anaesthesia"
    @peds_exam_content = "http://www.theaba.org/PDFs/Pediatrics-Anesthesiology/PAContentOutline"
    @peds_exam_questions = "http://www.theaba.org/PDFs/Pediatrics-Anesthesiology/PASampleQuestions"
    @study_strategy = [
      ["Peds Anesthesia boards prep help. (6/16)",                           "http://forums.studentdoctor.net/threads/peds-anesthesia-boards-prep-help.1208153/"],
      ["Pediatric Anesthesia Study Books (7/14)",                            "http://forums.studentdoctor.net/threads/pediatric-anesthesia-study-books.1089468/"],
      ["Pediatric Anesthesia Boards (4/14)",                                 "http://forums.studentdoctor.net/threads/pediatric-anesthesia-boards.1065636/"],
      ["Pediatric Anesthesia Boards 2013 (9/12)",                            "http://forums.studentdoctor.net/threads/pediatric-anesthesia-board-exam-2013.947808/"]
    ]
    @commercial_courses = [
      ["AQB - anesthesiaQbank",                                              "http://anesthesiaqbank.com"],
      ["The Pass Machine",                                                   "http://www.thepassmachine.com/pediatric-anesthesiology-certification-exam-prep-course.html"],
      ["PedsAnesthesiaExam.com",                                             "http://www.pedsae.com"],
      ["Dr. Jensen Peds Blue",                                               "http://www.anesthesiologyboards.com/peds/"]     
    ]
    @pedsanesresources = [
      ["Mask Induction - Pediatric Anesthesiology at Tufts Medical Center",  "http://www.maskinduction.com"],
      ["Cincinatti Children's - Congenital Heart Disease Library",           "http://www.cincinnatichildrens.org/patients/child/encyclopedia/defects/default"],
      ["Society for Pediatric Anesthesiology",                               "http://www.pedsanesthesia.org"],
      ["Smart Tots",                                                         "http://www.smarttots.org"]     
    ]
  end
  
  def echoboards
    @nbe = "http://www.echoboards.org"
    @basic = "http://www.echoboards.org/content/basic-pte®"
    @advanced = "http://www.echoboards.org/content/advanced-pteexam®"
    @fellowships = "http://www.scahq.org/FellowshipCareerOpportunities/AdultCardiothoracicAnesthesiologyFellowships/AccreditedFellowshipPrograms.aspx"
    @basictee = "http://www.asecho.org/wordpress/wp-content/uploads/2013/05/Basic-Perioperative-TEE-Exam.pdf"
    @basicpte = "http://www.echoboards.org/sites/default/files/2010_Basic_PTEeXAM_Content_Outline.pdf"
    @advancedpte = "http://www.echoboards.org/sites/default/files/Advanced_PTE_Content_Outline_0.pdf"
    @pie = "http://pie.med.utoronto.ca/TEE/"
    @opentee = "http://www.openanesthesia.org/basic-course-in-tee/"
    @ase = "http://asecho.org"
    @canada = "http://csecho.ca/resources/"
    @study_strategy = [
      ["Advanced PTE Exam 2015 Stats (9/15)",                                 "http://forums.studentdoctor.net/threads/advanced-pte-exam-2015-stats.1158310/"],
      ["Anyone taking the Basic TEE boards (7/14)",                           "http://forums.studentdoctor.net/threads/any-one-taking-the-basic-tee-boards.1082996/#post-15417881"],
      ["Advanced PTEeXAM (7/12)",                                             "http://forums.studentdoctor.net/threads/advanced-pteexam-echo-boards.930568/#post-14384680"],
      ["PTEeXAM Results 2012 (8/12)",                                         "http://forums.studentdoctor.net/threads/pteexam-results-2012.943494/#post-13008682"]
    ]    
    @commercial_courses = [
      ["PTE Masters",                                                         "http://www.ptemasters.com"],
      ["e-Echocardiography",                                                  "https://e-echocardiography.com/index.php"]
    ]
  end
  
  def crnaboards
    @nbcrna = "http://www.nbcrna.com/Pages/default.aspx"
    @aana = "http://www.aana.com/Pages/default.aspx"
    @abns = "http://www.nursingcertification.org"
    @handbook = "http://www.nbcrna.com/certification/SiteAssets/Pages/Program-Administration/NCE_Handbook.pdf"
    @nurse_anes = "http://www.nurse-anesthesia.org"
    
    @commercial_courses = [
      ["AQB - anesthesiaQbank",                                                     "http://anesthesiaqbank.com"],
      ["Valley Anesthesia",                                                         "http://www.valleyanesthesia.com"],
      ["Prodigy Anesthesia",                                                        "http://www.prodigyanesthesia.net"],
      ["Apex Anesthesia Review",                                                    "http://www.apexanesthesia.com"],
      ["Core Concepts Anesthesia Review",                                           "http://www.ccanesthesiareview.com"],
    # ["CRNABoardPrep.com",                                                         "http://www.crnaboardprep.com"]
    ]
  end
  
  def moca
    @aba = "http://www.theaba.org/MOCA/About-MOCA"
    @abms = "http://www.abms.org"
    @moca = "http://www.theaba.org/MOCA/About-MOCA"
    @moca2 = "http://www.theaba.org/PDFs/MOCA/MOCA-2-0-FAQs"
    @moca3 = "http://www.theaba.org/MOCA/MOCA-Timeline"
    @mocaminute = "http://cl.s7.exct.net/?qs=dca063e79bc9adbe9e3f31a6381e7fdee5342b191b5c2f305dbe3da31f4ca03a137020c5928a6f85"
    @sim = "http://education.asahq.org/sim/endorsed"
    @ppai = "http://education.asahq.org/PPAI"
    @activities = "http://www.theaba.org/PDFs/MOCA/MOCA-2-0-Part-4-Requirements"
    @cme = "http://www.theaba.org/PDFs/MOCA/ABA-Approved-CME"
    @study_strategy = [
      ["MOCA 2.0 Deadline - Participate or NOT??? (3/16)",                                  "http://forums.studentdoctor.net/threads/moca-2-0-deadline-participate-or-not.1190644/"],
      ["More MOCA 2.0 Info (9/15)",                                                         "http://forums.studentdoctor.net/threads/more-moca-2-0-info.1158892/"],
      ["moca 2.0 (4/15)",                                                                   "http://forums.studentdoctor.net/threads/moca-2-0.1132521"],
      ["Petition the ABA to Change MOCA (2/15)",                                            "http://forums.studentdoctor.net/threads/petition-the-aba-to-change-moca.1119629/"],
      ["Moca (11/14)",                                                                      "http://forums.studentdoctor.net/threads/moca.1108095/"],
      ["Just PASSED!!! MOCA 2014 (2/14)",                                                   "http://forums.studentdoctor.net/threads/just-passed-moca-2014.1055820/"],
      ["MOCA/CME (11/13)",                                                                  "http://forums.studentdoctor.net/threads/moca-cme.1041454/"]  
    ]
    @commercial_courses = [
      ["Best Medicine for MOCA (Jensen)",                                            "http://anesthesiologyboards.com/moca-recert/index.asp"],
      ["The Pass Machine",                                                           "http://www.thepassmachine.com/courses/anesthesiology/moca-exam/introduction"]
    ]
  end
  
  def ms
    @articles = [
      ["Karen Sibert - What No One Tells You About Anesthesiology",                 
        "http://apennedpoint.com/medical-students-what-no-one-tells-you-about-anesthesiology/"],
      ["Richard Novak - What Personal Characteristics are Essential to Becoming a Successful Anesthesiologist?",
        "http://theanesthesiaconsultant.com/2015/07/17/on-becoming-an-anesthesiologist-what-personal-characteristics-are-essential-to-become-a-successful-anesthesiologist/"],
      ["Colin JL McCartney - Why I Chose to Become an Anaesthetist", 
        "http://www.colinjlmccartney.com/medical-blog/why-i-chose-to-become-an-anaesthetist"],
      ["Andy Orin - What I do as an Anesthesiologist", 
        "http://lifehacker.com/career-spotlight-what-i-do-as-an-anesthesiologist-1716010008"]
    ]
    
    @ua= ["Understanding Anesthesia", "http://www.understandinganesthesiology.com"]
    @rca = ["Royal College of Anaesthetists Guide for Novice Trainees", "http://www.e-lfh.org.uk/e-learning-sessions/rcoa-novice/home.html"]
    @sea = ["SEA", "http://www.seahq.net"]
    @seams = ["Medical Student Guide to Anesthesiology", "http://www.seahq.net/images/sea_msg.pdf"]
    
  end
  
  def calculator
      @asa =     params[:asa_checkbox] 
      @surgery = params[:surgery_checkbox] 
      @resp =    params[:resp_checkbox]
      @smoking = params[:smoking_checkbox]
      @nmd =     params[:nmd_checkbox]
      @weight =  params[:weight_checkbox]
      @bmi =     params[:bmi_checkbox]
      @ga =      params[:ga_checkbox]
      @length =  params[:length_checkbox]
      @age =     params[:age_radio]
      @adls =    params[:adls_radio]
      @surgurg = params[:surgery_radio]
      
      @score = @asa.to_i +     @surgery.to_i + @resp.to_i + 
               @smoking.to_i + @nmd.to_i +     @weight.to_i +
               @bmi.to_i +     @ga.to_i +      @length.to_i +
               @age.to_i +     @adls.to_i +    @surgurg.to_i    
  end
  
  def delirium
      @del =     params[:del_checkbox].to_i
      @age =     params[:age_radio]
      @sense =   params[:sense_radio]
      @adl =     params[:adl_radio]
      @cog =     params[:cog_radio]
      @sa =      params[:sa_radio]
      
      @score = @age.to_i + @sense.to_i + @adl.to_i + @cog.to_i + @sa.to_i
  end
  
  def ponv
      @gan = "http://pdfs.journals.lww.com/anesthesia-analgesia/2014/01000/Consensus_Guidelines_for_the_Management_of.13.pdf?token=method|ExpireAbsolute;source|Journals;ttl|1463677047643;payload|mY8D3u1TCCsNvP5E421JYK6N6XICDamxByyYpaNzk7FKjTaa1Yz22MivkHZqjGP4kdS2v0J76WGAnHACH69s21Csk0OpQi3YbjEMdSoz2UhVybFqQxA7lKwSUlA502zQZr96TQRwhVlocEp/sJ586aVbcBFlltKNKo+tbuMfL73hiPqJliudqs17cHeLcLbV/CqjlP3IO0jGHlHQtJWcICDdAyGJMnpi6RlbEJaRheGeh5z5uvqz3FLHgPKVXJzdOHIHwDOSay4QvwGGy628k23O72qKHd/ADQ0uUe6KHXsGSlzVXn4NIKCs8Au6cLGw;hash|K/Zuqzx8YngzbYNnk3VQKQ=="
      
      @gender  = params[:gender_checkbox] 
      @smoke   = params[:smoke_checkbox] 
      @history = params[:history_checkbox]
      @opioids = params[:opioids_checkbox]
     
      @score = @gender.to_i + @smoke.to_i + @history.to_i + @opioids.to_i    
  end
end
