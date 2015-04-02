class StaticPagesController < ApplicationController
  def welcome
  end

  def feedback
    @feedback =   ["anesthesiahub@gmail.com", "mailto:anesthesiahub@gmail.com"]
  end

  def about
    @david_moss =    ["David Moss, MD",                     "https://www.tuftsmedicalcenter.org/PhysicianDirectory/David-Moss.aspx"]
    @tufts_medical = ["Tufts Medical Center",               "https://www.tuftsmedicalcenter.org"]
    @floating =      ["The Floating Hospital for Children", "https://www.floatinghospital.org"]
  end

  def secret
  end

  def tools
 
    @acls_algos = [
      ["Simplified Adult BLS ",       "http://crashingpatient.com/wp-content/images/acls/basic.jpg"],
      ["Cardiac Arrest Cycle",        "http://circ.ahajournals.org/content/122/18_suppl_3/S729/F2.large.jpg"],
      ["Cardiac Arrest",              "http://circ.ahajournals.org/content/122/18_suppl_3/S729/F1.large.jpg"],
      ["Bradycardia (with pulse)",    "http://circ.ahajournals.org/content/122/18_suppl_3/S729/F3.large.jpg"],
      ["Tachycardia (with pulse)",    "http://circ.ahajournals.org/content/122/18_suppl_3/S729/F4.large.jpg"],
      ["Acute Coronary Syndrome",     "http://crashingpatient.com/wp-content/images/acls/acs.jpeg"],
      ["Stroke",                      "http://crashingpatient.com/wp-content/images/acls/stroke.jpeg"],
      ["Cardiac Arrest in Pregnancy", "http://crashingpatient.com/wp-content/images/acls/maternal%20card.jpeg"]
    ]

    @pals_algos = [
      ["Pediatric BLS",            "http://circ.ahajournals.org/content/122/18_suppl_3/S862/F3.large.jpg"],
      ["Pediatric Cardiac Arrest", "http://circ.ahajournals.org/content/122/18_suppl_3/S876/F1.large.jpg"],
      ["Bradycardia (with pulse)", "http://circ.ahajournals.org/content/122/18_suppl_3/S876/F2.large.jpg"],
      ["Tachycardia (with pulse)", "http://circ.ahajournals.org/content/122/18_suppl_3/S876/F3.large.jpg"],
      ["Newborn Resuscitation",    "http://circ.ahajournals.org/content/122/18_suppl_3/S909/F1.large.jpg"],
      ["Pediatric Endotracheal Tube Size",  "http://www.mdcalc.com/endotracheal-tube-ett-size-for-pediatrics/"],
      ["Apgar Score",              "http://www.mdcalc.com/apgar-score/"]
    ]

    @critical_events = [
      ["Pediatric Critical Events",  "http://www.pedsanesthesia.org/newnews/Critical_Event_Checklists.pdf?201310291500"],
      ["Laryngospasm",               "http://www.maskinduction.com/uploads/3/1/6/4/31643965/laryngospasm_management_algorithm.pdf"],
      ["Difficult Airway Algorithm", "Airway.jpg"],
      ["Anaphylaxis",                "Anaphylaxis.jpg"]
    ]
    
    @anatomy = [
      ["Bronchoscopy",               "http://www.bronchoscopy.org/downloads/posters/StepByStepPoster.pdf"],
      ["Brachial Plexus",            "http://anatomyandart.com/blog/wp-content/uploads/2009/08/brachial_plexus11.jpg"],
      ["Lumbar Plexus",              "http://en.wikipedia.org/wiki/Lumbar_plexus#mediaviewer/File:Lumbar_plexus.svg"],
      ["Vertebral Body",             "http://en.wikipedia.org/wiki/Vertebral_column#mediaviewer/File:718_Vertebra.jpg"]
      
    ]

    @guidelines = [
      ["ACC/AHA 2014 Preop Testing", "http://circ.ahajournals.org/content/early/2014/07/31/CIR.0000000000000106.full.pdf"],
      ["SCA Clinical Practice & Guidelines", "http://www.scahq.org/ClinicalPracticeGuidelines/Guidelines.aspx"],
      ["Endocarditis Prophylaxis",   "endocarditis.jpg"],
      ["Difficult Airway Society",    "http://www.das.uk.com/guidelines"],
      ["ASRA Neuraxial Anticoags",   "https://kr.ihc.com/ext/Dcmnt?ncid=520499512&tfrm=default"],
      ["ASA Guidelines",             "http://www.asahq.org/For-Members/Standards-Guidelines-and-Statements.aspx"],
      ["Sedation and Anesthesia in GI Endoscopy", "http://www.asge.org/uploadedFiles/Publications_and_Products/Practice_Guidelines/Sedation%20and%20Anesthesia%20in%20GI%20Endoscopy%202008.pdf"]
    ]

    @drug_dosing = [
      ["Narcotic Equivalence Converter", "http://medcalc.com/narcotics.html"],
      ["Steroid Equivalence Converter",  "http://www.medcalc.com/steroid.html"],
      ["PALS Drugs",                  "PALS_Drugs.jpg"],
      ["Peds Anesthesia Drugs",       "http://anesthesia.stonybrook.edu/teaching/peds-drug-dosages"],
      ["Peds Anesthesia Pocket Ref",  "http://pedianesthesia.ucsf.edu/pdf_pedirefcard.pdf"],
      ["Periop Antibiotic Dosing",    "http://www.ashp.org/DocLibrary/BestPractices/TGSurgery.aspx"],
      ["PONV Prophylaxis",            "PONV.jpg"],
    ]

    @calculators = [
      ["Arterial Blood Gas Analyzer",    "http://www.mdcalc.com/arterial-blood-gas-abg-analyzer/"],
      ["Surgical Apgar Score",           "http://www.mdcalc.com/surgical-apgar-score-sas-post-operative-risk/"],
      ["MELD Score",                     "http://www.mdcalc.com/meld-score-model-for-end-stage-liver-disease-12-and-older/"],
      ["Child-Pugh Score",               "http://www.mdcalc.com/child-pugh-score-for-cirrhosis-mortality/"],
      ["Revised Cardiac Risk Index(RCRI)",     "http://www.mdcalc.com/revised-cardiac-risk-index-for-pre-operative-risk/"],
      ["Injury Severity Score (ISS)",    "http://www.mdcalc.com/injury-severity-score-iss/"],
      ["Allowable Blood Loss",           "http://easycalculation.com/medical/allowable-blood-loss.php"],
      ["Parkland Formula",               "http://www.mdcalc.com/parkland-formula-for-burns/"],
      ["Glascow Coma Scale",             "http://www.mdcalc.com/glasgow-coma-scale-score/"],
      ["APACHE II",                      "http://www.mdcalc.com/apache-ii-score-for-icu-mortality/"],
      ["BMI / BSA",                      "http://www.mdcalc.com/bmi-and-body-surface-area-bsa/"],
      ["Ideal Body Weight",              "http://www.mdcalc.com/ideal-body-weight/"],
      ["A-a Gradient",                   "http://www.mdcalc.com/a-a-o2-gradient/"],
      ["Cockgroft-Gault CrCl",           "http://www.mdcalc.com/creatinine-clearance-cockcroft-gault-equation/"]
    ]
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

  def writtens
    @old_aba_exams = ["1990-1996 In-training Examinations", "http://www.theaba.org/Home/examinations_certifications"]
    @aba_training_programs = ["here", "http://www.theaba.org/Home/TrainingPrograms"]
    @aba_content_outline = ["content outline", "http://www.theaba.org/pdf/Basic-and-Advanced-ContentOutline.pdf"]
    @aba_exam_summary = ["2014 Exam Summary (PDF)", "http://www.theaba.org/pdf/SAAA-Exams-Report.pdf"]
    @open_anesthesia_keywords = ["Open Anesthesia", "http://www.openanesthesia.org/OpenAnesthesia.org:KeywordBrowser"]
    @study_strategy = [
      ["How to kill basic science/ite exams? (2/15)",      "http://forums.studentdoctor.net/threads/how-to-kill-basic-science-ite-exams.1123216/"],
      ["2015 In Training Exam (2/15)",                     "http://forums.studentdoctor.net/threads/2015-in-training-exam.1122186/"],
      ["Trulearn ITE question bank, predicted score (1/15)?", "http://forums.studentdoctor.net/threads/trulearn-ite-question-bank-predicted-score.1117676/#post-16349673"],
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
      ["10th Hour Anesthesia Review",                    "http://www.anesthesia-review.com"],
      ["True Learn Anesthesiology",                      "http://www.truelearn.com/anesthesiology/"],
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
    @aba_archive = ["ABA", 'http://www.theaba.org/Home/Videos']
    @exam_hints_pdf = ["PDF", 'http://anesthesiaboardhints.homestead.com/HintsfortheAnesthesiologyBoardExaminationRev1.6.pdf']
    @lovich = ["PowerPoint", "http://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=12&ved=0CCIQFjABOAo&url=http%3A%2F%2Fwww.anesthesiawiki.net%2Fmetrohealthanesthesia%2FMHAnes%2Fpresentations%2FthingsIDoForResidents.ppt&ei=kX74VOmUCcyngwSwvIGQDQ&usg=AFQjCNF6NWli0liUyXURDbK7D6NdGjFDjw&sig2=I8OKZ5k2zW1YpuYiMobSIA&bvm=bv.87519884,d.eXY"]
    @aba_training_programs = ["here", "http://www.theaba.org/Home/TrainingPrograms"]
    @the_anesthesia_consultant = ["The Anesthesia Consultant", 'http://theanesthesiaconsultant.com/2013/08/22/advice-for-passing-the-oral-board-exams-in-anesthesiology/']

    @study_strategy = [
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
      ["Dr. Jensen Essential Oral Board P.R.E.P.",     "http://www.boardprep.com"],
      ["GadsenJones Anesthesiology Oral Board Review", "http://www.gadsdenjones.com"],
      ["Just Oral Boards",                             "http://www.justoralboards.com"],
      ["AceMedBoard",                                  "http://www.acemedboard.com"],
      ["Nail the Boards",                              "http://www.nailtheboards.com"],
      ["Michael Ho: The Essential Oral Board Review",  "http://www.anconsultants.com"],
      ["The Osler Institute",                          "http://www.osler.org/main/ane.html"],
      ["Ultimate Board Prep",                          "http://www.ultimateboardprep.com"]
    ]
  end

  def pedsboards
    @peds_exam_content = "http://www.theaba.org/pdf/PAContentOutline.pdf"
    @peds_exam_questions = "http://www.theaba.org/pdf/PASampleQuestions.pdf"
    @study_strategy = [
      ["Pediatric Anesthesia Study Books (7/14)",                            "http://forums.studentdoctor.net/threads/pediatric-anesthesia-study-books.1089468/"],
      ["Pediatric Anesthesia Boards (4/14)",                                 "http://forums.studentdoctor.net/threads/pediatric-anesthesia-boards.1065636/"],
      ["Pediatric Anesthesia Boards 2013 (9/12)",                            "http://forums.studentdoctor.net/threads/pediatric-anesthesia-board-exam-2013.947808/"]
    ]
    @commercial_courses = [
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
    @basicpte = "http://www.echoboards.org/sites/default/files/2010_Basic_PTEeXAM_Content_Outline.pdf"
    @advancedpte = "http://www.echoboards.org/sites/default/files/Advanced_PTE_Content_Outline_0.pdf"
    @pie = "http://pie.med.utoronto.ca/TEE/"
    @yale = "http://www.yale.edu/imaging/echo_atlas/contents/"
    @canada = "http://csecho.ca/resources/"
    @study_strategy = [
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
    @absnc = "http://www.nursingcertification.org/accreditation.html"
    @abns = "http://www.nursingcertification.org"
    @handbook = "http://www.nbcrna.com/certification/SiteAssets/Pages/Program-Administration/2015%20NCE%20Handbook.pdf"
    @nurse_anes = "http://www.nurse-anesthesia.org"
    
    @commercial_courses = [
      ["Valley Anesthesia",                                                         "http://www.valleyanesthesia.com"],
      ["Core Concepts Anesthesia Review",                                           "http://www.ccanesthesiareview.com"],
      ["CRNABoardPrep.com",                                                         "http://www.crnaboardprep.com"]
    ]
  end
  
  def movies
    @art_rad_us = [
      ["UCSF",                                                                "https://youtu.be/YOxyssqqYNE"],   
      ["Sonosite 3D",                                                         "https://youtu.be/uHfeyAYiWOc"] 
    ]
    @art_rad_non_us = [
      ["NEJM",                                                                "https://youtu.be/8hK04ai17-k"],   
      ["Kaiser Permanente - Barry Bloom",                                     "https://youtu.be/6--8J4iqGEY"],
      ["Arrow Catheter",                                                      "https://youtu.be/ug2JIsk8494"],
      ["Yale Media Lab - Viji Kurup",                                         "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-178321"],
      ["marhaba2000",                                                         "https://youtu.be/qv54USEYNzw"]
    ]
    @art_brach_us = [
    ]
    @art_brach_non_us = [
      ["Dr. Gallagher's Neighborhood",                                        "https://youtu.be/fRUHD6WJraU"]   
    ] 
    @cent_ij_us = [
      ["NEJM",                                                                "https://youtu.be/HE5QhsPRaPU"],   
      ["Mount Sinai Hospital - David Reich",                                  "https://youtu.be/coEpM7IBzsM"], 
      ["Sonosite, Part 1 - Phil Perera",                                      "https://youtu.be/_RHRy64jQ6s"], 
      ["Sonosite, Part 2 - Phil Perera",                                      "https://youtu.be/zV3hw_QbgK4"], 
      ["Sonosite, Cedars-Sinai - Diku Mandavia",                              "https://youtu.be/21w4kuD0_gA"] 
    ]
    @cent_ij_non_us = [
      ["MedicineUpToDate",                                                    "https://youtu.be/tf11gOpmmTo"]   
    ] 
    @swan = [
      ["Kaiser Permanente - Barry Bloom",                                     "https://youtu.be/HdlCH_h_Hao"]
    ]
    @cent_subclav_us = [
      ["Sonosite 3D",                                                         "https://youtu.be/IBmbc1ak5fY"],
      ["Sonosite - Supraclavicular Approach - Phil Perera",                   "https://youtu.be/I3Jqbxa1_Ts"]          
    ]
    @cent_subclav_non_us = [
      ["Ashton Moh",                                                          "https://youtu.be/p-yUMu63TMQ"]   
    ]
    @cent_fem_us = [
      ["Sonosite 3D",                                                         "https://youtu.be/gNvbxeoUMlc"]   
    ]
    @cent_fem_non_us = [
      ["Medicine UpToDate",                                                   "https://youtu.be/ybCpeb2E0dU"]   
    ]
    @interscalene = [
      ["NYSORA",                                                              "https://youtu.be/Zke6938Y1k4"],
      ["Sonosite - David Auyong",                                             "https://youtu.be/Dg9BJ-32yLc"],
      ['Sonosite 3D',                                                         "https://youtu.be/wAABZF1aSO8"],
      ['Yale Media Lab',                                                      "https://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194040"],
      ['Analogic - Brian Pollard',                                            'https://youtu.be/6HhKpLEdGWY'],
      ['Samsung',                                                             "https://youtu.be/3IvQqrLDfHU"],
      ['RACSI - Robert Raw',                                                  "https://youtu.be/cUYsFNL9g2M"],
      ["SSRA - Theresa Bowling",                                              "https://youtu.be/OhFs-batCSY"]   
    ]
    @supraclavicular = [
      ["NYSORA",                                                              "https://youtu.be/UmG-bgEQQ4E"],
      ["LSORA",                                                               "https://youtu.be/by28CWp-H-o"],
      ['Analogic - Brian Pollard',                                            "https://youtu.be/JD5MYRhjsWU"],
      ["Sonosite - David Auyong",                                             "https://youtu.be/ztOIvfjsB-U"],
      ["Sonosite 3D",                                                         "https://youtu.be/9vW1uo7mKDc"],
      ["Yale Media Lab",                                                      "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194043"],
      ["RACSI - Robert Raw",                                                  "https://youtu.be/FeQfAlJkPk8"],
      ["Stuart Grant",                                                        "https://youtu.be/oRUlnmQrWJ0"],
      ["SSRA - Theresa Bowling",                                              "https://youtu.be/FgH5RWkhD0g"]   
    ]
    @infraclavicular = [
      ["Sonosite - David Auyong",                                             "https://youtu.be/hRyDtXrfYqc"],
      ['Analogic - Brandon Winchester (Catheter)',                            'https://youtu.be/GL6q61r_oU8'],
      ["Yale Media Lab",                                                      "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194039"],
      ["RASCI - Robert Raw",                                                  "https://youtu.be/HtDEYcxtE5w"],
      ["SSRA - Theresa Bowling",                                              "https://youtu.be/Z9woYkyJl_U"]   
    ]
    @axillary = [
      ["NYSORA",                                                              "https://youtu.be/DdbtAClkBAs"],
      ["Sonosite - David Auyong",                                             "https://youtu.be/GaH-CO6OrV0"],
      ['Sonosite 3D',                                                         "https://youtu.be/3utZmyOXrYg"],
      ["Yale Media Lab",                                                      "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194036"],
      ['Samsung',                                                             "https://youtu.be/_03WDU7a7fs"],
      ['RACSI - Robert Raw',                                                  "https://youtu.be/3iVjzo13w9g"]  
    ]
    @femoral = [
      ["NYSORA",                                                              "https://youtu.be/1mkHrVxdGNg"],
      ["Sonosite - David Auyong",                                             "https://youtu.be/5ht_N8j2KL8"],
      ["Sonosite 3D",                                                         "https://youtu.be/pCkjioc-EmQ"],
      ['Analogic - Brian Pollard',                                            "https://youtu.be/KINbrLTI7PI"],
      ["Yale Media Lab",                                                      "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194038"],
      ["Yale Media Lab - Saphenous Block",                                    "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194021"],
      ["Stuart Grant",                                                        "https://youtu.be/wxQKdrPw2tA"],
      ["SSRA - Steven Finkel",                                                "https://youtu.be/DwtvZ0tC9ng"],
      ["Analogic - Brandon Winchester - Adductor Canal Catheter",             "https://youtu.be/4WFerLClu9s"],
      ["AMSURA - Adductor Canal",                                             "https://youtu.be/o9zzqILu0Dk"]   
    ]
    @sciatic = [
      ["NYSORA - Popliteal",                                                  "https://youtu.be/gH1BS54EYjU"],
      ["LSORA - Popliteal",                                                   "https://youtu.be/b2q1sRVa9cM"],
      ["Yale Media Lab - Popliteal",                                          "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194041"],
      ["Samsung - Popliteal",                                                 'https://youtu.be/PX2XTLOKQL0'],
      ["Analogic - Brian Pollard",                                            'https://youtu.be/6UFrD69QuCs'],
      ["UCSF - Popliteal",                                                    "https://youtu.be/CTJJdISVc24"],
      ["SSRA - Popliteal - Steven Finkel",                                    "https://youtu.be/qYM2sft8R2I"],  
      ["Sonosite - Popliteal - David Auyong",                                 "https://youtu.be/kzhSiQBPE7s"],
      ["Yale Media Lab - Subgluteal",                                         "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194042"],
      ["Samsung - Subgluteal",                                                "https://youtu.be/Vh2msgOrHYo"],
      ["Sonosite - Subgluteal - David Auyong",                                "https://youtu.be/rl8rZOEMveE"],
      ["Samsung - Anterior",                                                  "https://youtu.be/2MOsXoRWO3s"],
      ["SSRA - Anterior - Steven Finkel",                                     "https://youtu.be/h14Ee2yAmUU"]
    ]
    
    @lumbar_plexus = [
      ["Manoj Karmakar",                                                      "http://usra.ca/view_video.php?videoid=124"] 
    ]
    
    @abdominal = [
      ["Sonosite 3D - Ilioinguinal / Iliohypogastric",                        "https://youtu.be/uurxBFRT_EE"],
      ["Sonosite - Ilioinguinal / Iliohypogastric - David Auyong",            "https://youtu.be/6E3ynIn6Ud4"],
      ["SSRA - TAP Block - Theresa Bowling",                                  "https://youtu.be/9iXkZ8KG2X4"],
      ["Analogic - TAP Block - Brandon Winchester",                           "https://youtu.be/Ou1aft6ClM8"],
      ["Pajunk - TAP Block",                                                  "https://youtu.be/CzMDdrPbLEM"],
      ["TAP Block - Brian Sites",                                             "https://youtu.be/9TIHDn7uBZI"],
      ["SSRA - Fascia Iliaca Block - Steven Finkel",                          "https://youtu.be/2rCiAbtLmZ8"],
      ["David Provenzano - Ilioinguinal/Iliohypogastric/TAP lecture",         "http://usra.ca/view_video.php?videoid=166"]
    ]
    
    @pediatric_block = [  
      ["Pediatric TAP Block",                                                 "https://youtu.be/XfRLiny_D8E"]
    ]
    
    @spinal = [
      ["Procedural Checklist - Stanford",                                     "https://youtu.be/eblMcptvcAo"],
      ["Obstetric Spinal",                                                    "https://youtu.be/JC0ljF1TRuQ"],
      ["Hal DeVera (Shriner's) - Ultrasound-guided 3 year-old",               "http://usra.ca/view_video.php?videoid=153"]   
    ]
    @epidural = [
      ["Braun Perifix",                                                       "https://youtu.be/Ttm0p8MJRWA"],
      ["10 Tips to Optimize Technique - Lecture - Lawrence Tsen",             "https://youtu.be/_BqxQW4Uyh4"] 
    ]
    @paravertebral = [
      ["LSORA",                                                               "http://youtu.be/vSbhqR5oIAs"],
      ["SSRA - US-guided - Theresa Bowling",                                  "https://youtu.be/l97p0mbOv1E"]
    ]
    @intubation_adult = [
      ["Orotracheal Intubation Part I - NEJM",                                "https://youtu.be/8SS_AhR-DUw"],
      ["Orotracheal Intubation Part II- NEJM",                                "https://youtu.be/t_8lNoaP6Oo"],
      ["Intubation on Mannequin - Chris Gallagher",                           "http://youtu.be/ZJtFb7lGPic"],
      ["Basic Principles of Direct Laryngoscopy",                             "https://youtu.be/ooiw6zpCJbI"],
      ["FoundationSkills.net animation",                                      "https://youtu.be/0VGiBwyfuNI"],
      ["Direct Laryngoscopy",                                                 "https://youtu.be/tjR_-Wq4pns"],
      ["Endotracheal Intubation",                                             "https://youtu.be/5J3J38se3TQ"],
      ["Mannequin demo - Keith Littlewood",                                   "https://youtu.be/-c3DxFEGaL4"]
    ]
    @intubation_pediatric = [
      ["Pediatric Glidescope Intubation",                                     "https://youtu.be/166GYtQd2Z4"],
      ["Neonatal Intubation",                                                 "https://youtu.be/23ArsJyJzvg"]     
    ]
    @olv = [
      ["Double-Lumen Tube Part I",                                            "https://youtu.be/w1cgx2AVC6k"],
      ["Double-Lumen Tube Part II",                                           "https://youtu.be/JZkOiy4PXxg"],
      ["Bronchial Blocker",                                                   "https://youtu.be/mlS35eUUxqA"]  
    ]
    @mask = [
      ["Mask Ventilation - Chris Gallagher",                                  "http://youtu.be/1goz1l28kUQ"],
      ["LMA Use - Chris Gallagher",                                           "http://youtu.be/-oXa-f5qkGY"]  
    ]
    @advanced_airway = [
      ["Flexible Fiberoptic Scope",                                           "http://www.airwayelearning.com/awel/videos/videos.aspx?Action=1&NewsId=2300&PID=64893"],
      ["Awake Fiberoptic - Yale Media Lab",                                   "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-163756"],
      ["Awake Fiberoptic / Transtracheal Block - Michael Bailin",             "https://youtu.be/bDRTzmuwMnQ"],
      ["Fiberoptic intubation tips - Chris Gallagher",                        "http://youtu.be/-Ehjj06HReE"],
      ["Video Laryngoscopy - Chris Gallagher",                                "http://youtu.be/I1k_z8kGwt4"],
      ["Glidescope demo",                                                     "https://youtu.be/Kt2VweVmNwY"],
      ["Glidescope demo - HospitalProcdures.org",                             "https://youtu.be/4VAMBj2kc2Y"],
      ["Bougie guided intubation",                                            "https://youtu.be/E7Lo1JD2Brk"],
      ["Retrograde intubation - Katie Normand",                               "http://www.airwayelearning.com/awel/videos/videos.aspx?Action=1&NewsId=1860&PID=64893"],
      ["Retrograde intubation",                                               "https://youtu.be/JYMwy1-MwMU"]     
    ]
    @cric = [
      ["Percutaneous Cricothyrotomy tutorial - Chris Gallagher",              "http://youtu.be/1DBHhvWIPCk"],
      ["Surgical Cricothyrotomy Animation",                                   "https://youtu.be/dvWy9NXiZZI"],
      ["Surgical Cricothyroidotomy - UCSD - Dennis Kim",                      "https://youtu.be/Kg14kdIycDE"],
      ["Needle Cricothyrotomy",                                               "https://youtu.be/aPiQA2XKkcs"]  
    ]
  end
  
  def airway
    @intubation_adult = [
      ["Orotracheal Intubation Part I - NEJM",                                "https://youtu.be/8SS_AhR-DUw"],
      ["Orotracheal Intubation Part II- NEJM",                                "https://youtu.be/t_8lNoaP6Oo"],
      ["Intubation on Mannequin - Chris Gallagher",                           "http://youtu.be/ZJtFb7lGPic"],
      ["Basic Principles of Direct Laryngoscopy",                             "https://youtu.be/ooiw6zpCJbI"],
      ["FoundationSkills.net animation",                                      "https://youtu.be/0VGiBwyfuNI"],
      ["Direct Laryngoscopy",                                                 "https://youtu.be/tjR_-Wq4pns"],
      ["Endotracheal Intubation",                                             "https://youtu.be/5J3J38se3TQ"],
      ["Mannequin demo - Keith Littlewood",                                   "https://youtu.be/-c3DxFEGaL4"]
    ]
    @intubation_pediatric = [
      ["Pediatric Glidescope Intubation",                                     "https://youtu.be/166GYtQd2Z4"],
      ["Neonatal Intubation",                                                 "https://youtu.be/23ArsJyJzvg"]     
    ]
    @olv = [
      ["Double-Lumen Tube Part I",                                            "https://youtu.be/w1cgx2AVC6k"],
      ["Double-Lumen Tube Part II",                                           "https://youtu.be/JZkOiy4PXxg"],
      ["Bronchial Blocker",                                                   "https://youtu.be/mlS35eUUxqA"]  
    ]
    @mask = [
      ["Mask Ventilation - Chris Gallagher",                                  "http://youtu.be/1goz1l28kUQ"],
      ["LMA Use - Chris Gallagher",                                           "http://youtu.be/-oXa-f5qkGY"]  
    ]
    @advanced_airway = [
      ["Flexible Fiberoptic Scope",                                           "http://www.airwayelearning.com/awel/videos/videos.aspx?Action=1&NewsId=2300&PID=64893"],
      ["Awake Fiberoptic - Yale Media Lab",                                   "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-163756"],
      ["Awake Fiberoptic / Transtracheal Block - Michael Bailin",             "https://youtu.be/bDRTzmuwMnQ"],
      ["Fiberoptic intubation tips - Chris Gallagher",                        "http://youtu.be/-Ehjj06HReE"],
      ["Video Laryngoscopy - Chris Gallagher",                                "http://youtu.be/I1k_z8kGwt4"],
      ["Glidescope demo",                                                     "https://youtu.be/Kt2VweVmNwY"],
      ["Glidescope demo - HospitalProcdures.org",                             "https://youtu.be/4VAMBj2kc2Y"],
      ["Bougie guided intubation",                                            "https://youtu.be/E7Lo1JD2Brk"],
      ["Retrograde intubation - Katie Normand",                               "http://www.airwayelearning.com/awel/videos/videos.aspx?Action=1&NewsId=1860&PID=64893"],
      ["Retrograde intubation",                                               "https://youtu.be/JYMwy1-MwMU"]     
    ]
    @cric = [
      ["Percutaneous Cricothyrotomy tutorial - Chris Gallagher",              "http://youtu.be/1DBHhvWIPCk"],
      ["Surgical Cricothyrotomy Animation",                                   "https://youtu.be/dvWy9NXiZZI"],
      ["Surgical Cricothyroidotomy - UCSD - Dennis Kim",                      "https://youtu.be/Kg14kdIycDE"],
      ["Needle Cricothyrotomy",                                               "https://youtu.be/aPiQA2XKkcs"]  
    ]
  end
  
  def regional
    @interscalene = [
      ["NYSORA",                                                              "https://youtu.be/Zke6938Y1k4"],
      ["Sonosite - David Auyong",                                             "https://youtu.be/Dg9BJ-32yLc"],
      ['Sonosite 3D',                                                         "https://youtu.be/wAABZF1aSO8"],
      ['Yale Media Lab',                                                      "https://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194040"],
      ['Analogic - Brian Pollard',                                            'https://youtu.be/6HhKpLEdGWY'],
      ['Samsung',                                                             "https://youtu.be/3IvQqrLDfHU"],
      ['RACSI - Robert Raw',                                                  "https://youtu.be/cUYsFNL9g2M"],
      ["SSRA - Theresa Bowling",                                              "https://youtu.be/OhFs-batCSY"]   
    ]
    @supraclavicular = [
      ["NYSORA",                                                              "https://youtu.be/UmG-bgEQQ4E"],
      ["LSORA",                                                               "https://youtu.be/by28CWp-H-o"],
      ['Analogic - Brian Pollard',                                            "https://youtu.be/JD5MYRhjsWU"],
      ["Sonosite - David Auyong",                                             "https://youtu.be/ztOIvfjsB-U"],
      ["Sonosite 3D",                                                         "https://youtu.be/9vW1uo7mKDc"],
      ["Yale Media Lab",                                                      "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194043"],
      ["RACSI - Robert Raw",                                                  "https://youtu.be/FeQfAlJkPk8"],
      ["Stuart Grant",                                                        "https://youtu.be/oRUlnmQrWJ0"],
      ["SSRA - Theresa Bowling",                                              "https://youtu.be/FgH5RWkhD0g"]   
    ]
    @infraclavicular = [
      ["Sonosite - David Auyong",                                             "https://youtu.be/hRyDtXrfYqc"],
      ['Analogic - Brandon Winchester (Catheter)',                            'https://youtu.be/GL6q61r_oU8'],
      ["Yale Media Lab",                                                      "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194039"],
      ["RASCI - Robert Raw",                                                  "https://youtu.be/HtDEYcxtE5w"],
      ["SSRA - Theresa Bowling",                                              "https://youtu.be/Z9woYkyJl_U"]   
    ]
    @axillary = [
      ["NYSORA",                                                              "https://youtu.be/DdbtAClkBAs"],
      ["Sonosite - David Auyong",                                             "https://youtu.be/GaH-CO6OrV0"],
      ['Sonosite 3D',                                                         "https://youtu.be/3utZmyOXrYg"],
      ["Yale Media Lab",                                                      "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194036"],
      ['Samsung',                                                             "https://youtu.be/_03WDU7a7fs"],
      ['RACSI - Robert Raw',                                                  "https://youtu.be/3iVjzo13w9g"]  
    ]
    @femoral = [
      ["NYSORA",                                                              "https://youtu.be/1mkHrVxdGNg"],
      ["Sonosite - David Auyong",                                             "https://youtu.be/5ht_N8j2KL8"],
      ["Sonosite 3D",                                                         "https://youtu.be/pCkjioc-EmQ"],
      ['Analogic - Brian Pollard',                                            "https://youtu.be/KINbrLTI7PI"],
      ["Yale Media Lab",                                                      "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194038"],
      ["Yale Media Lab - Saphenous Block",                                    "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194021"],
      ["Stuart Grant",                                                        "https://youtu.be/wxQKdrPw2tA"],
      ["SSRA - Steven Finkel",                                                "https://youtu.be/DwtvZ0tC9ng"],
      ["Analogic - Brandon Winchester - Adductor Canal Catheter",             "https://youtu.be/4WFerLClu9s"],
      ["AMSURA - Adductor Canal",                                             "https://youtu.be/o9zzqILu0Dk"]   
    ]
    @sciatic = [
      ["NYSORA - Popliteal",                                                  "https://youtu.be/gH1BS54EYjU"],
      ["LSORA - Popliteal",                                                   "https://youtu.be/b2q1sRVa9cM"],
      ["Yale Media Lab - Popliteal",                                          "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194041"],
      ["Samsung - Popliteal",                                                 'https://youtu.be/PX2XTLOKQL0'],
      ["Analogic - Brian Pollard",                                            'https://youtu.be/6UFrD69QuCs'],
      ["UCSF - Popliteal",                                                    "https://youtu.be/CTJJdISVc24"],
      ["SSRA - Popliteal - Steven Finkel",                                    "https://youtu.be/qYM2sft8R2I"],  
      ["Sonosite - Popliteal - David Auyong",                                 "https://youtu.be/kzhSiQBPE7s"],
      ["Yale Media Lab - Subgluteal",                                         "http://medicine.yale.edu/anesthesiology/media/videos.aspx#6-194042"],
      ["Samsung - Subgluteal",                                                "https://youtu.be/Vh2msgOrHYo"],
      ["Sonosite - Subgluteal - David Auyong",                                "https://youtu.be/rl8rZOEMveE"],
      ["Samsung - Anterior",                                                  "https://youtu.be/2MOsXoRWO3s"],
      ["SSRA - Anterior - Steven Finkel",                                     "https://youtu.be/h14Ee2yAmUU"]
    ]
    
    @lumbar_plexus = [
      ["Manoj Karmakar",                                                      "http://usra.ca/view_video.php?videoid=124"] 
    ]
    
    @abdominal = [
      ["Sonosite 3D - Ilioinguinal / Iliohypogastric",                        "https://youtu.be/uurxBFRT_EE"],
      ["Sonosite - Ilioinguinal / Iliohypogastric - David Auyong",            "https://youtu.be/6E3ynIn6Ud4"],
      ["SSRA - TAP Block - Theresa Bowling",                                  "https://youtu.be/9iXkZ8KG2X4"],
      ["Analogic - TAP Block - Brandon Winchester",                           "https://youtu.be/Ou1aft6ClM8"],
      ["Pajunk - TAP Block",                                                  "https://youtu.be/CzMDdrPbLEM"],
      ["TAP Block - Brian Sites",                                             "https://youtu.be/9TIHDn7uBZI"],
      ["SSRA - Fascia Iliaca Block - Steven Finkel",                          "https://youtu.be/2rCiAbtLmZ8"],
      ["David Provenzano - Ilioinguinal/Iliohypogastric/TAP lecture",         "http://usra.ca/view_video.php?videoid=166"]
    ]
    
    @pediatric_block = [  
      ["Pediatric TAP Block",                                                 "https://youtu.be/XfRLiny_D8E"]
    ]
    
    @spinal = [
      ["Procedural Checklist - Stanford",                                     "https://youtu.be/eblMcptvcAo"],
      ["Obstetric Spinal",                                                    "https://youtu.be/JC0ljF1TRuQ"],
      ["Hal DeVera (Shriner's) - Ultrasound-guided 3 year-old",               "http://usra.ca/view_video.php?videoid=153"]   
    ]
    @epidural = [
      ["Braun Perifix",                                                       "https://youtu.be/Ttm0p8MJRWA"],
      ["10 Tips to Optimize Technique - Lecture - Lawrence Tsen",             "https://youtu.be/_BqxQW4Uyh4"] 
    ]
    @paravertebral = [
      ["LSORA",                                                               "http://youtu.be/vSbhqR5oIAs"],
      ["SSRA - US-guided - Theresa Bowling",                                  "https://youtu.be/l97p0mbOv1E"]
    ]
  end
end
