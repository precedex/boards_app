class StaticPagesController < ApplicationController
  def welcome
  end

  def feedback
  end

  def resources
  end

  def about
  end

  def search
  end

  def tools
    @bls_algos = [
      ["Simplified Adult BLS ", "http://crashingpatient.com/wp-content/images/acls/basic.jpg"]
    ]

    @acls_algos = [
      ["Cardiac Arrest Cycle", "http://circ.ahajournals.org/content/122/18_suppl_3/S729/F2.large.jpg"],
      ["Cardiac Arrest", "http://circ.ahajournals.org/content/122/18_suppl_3/S729/F1.large.jpg"],
      ["Bradycardia (with pulse)", "http://circ.ahajournals.org/content/122/18_suppl_3/S729/F3.large.jpg"],
      ["Tachycardia (with pulse)", "http://circ.ahajournals.org/content/122/18_suppl_3/S729/F4.large.jpg"],
      ["Acute Coronary Syndrome", "http://crashingpatient.com/wp-content/images/acls/acs.jpeg"],
      ["Stroke", "http://crashingpatient.com/wp-content/images/acls/stroke.jpeg"],
      ["Cardiac Arrest in Pregnancy", "http://crashingpatient.com/wp-content/images/acls/maternal%20card.jpeg"]
    ]

    @pals_algos = [
      ["Pediatric BLS", "http://circ.ahajournals.org/content/122/18_suppl_3/S862/F3.large.jpg"],
      ["Pediatric Cardiac Arrest", "http://circ.ahajournals.org/content/122/18_suppl_3/S876/F1.large.jpg"],
      ["Bradycardia (with pulse)", "http://circ.ahajournals.org/content/122/18_suppl_3/S876/F2.large.jpg"],
      ["Tachycardia (with pulse)", "http://circ.ahajournals.org/content/122/18_suppl_3/S876/F3.large.jpg"],
      ["Newborn Resuscitation", "http://circ.ahajournals.org/content/122/18_suppl_3/S909/F1.large.jpg"],
    ]

    @critical_events = [
      ["Pediatric Critical Events", "http://www.pedsanesthesia.org/newnews/Critical_Event_Checklists.pdf?201310291500"],
      ["Difficult Airway Algorithm", "Airway.jpg"],
      ["Anaphylaxis", "Anaphylaxis.jpg"]
    ]


    @guidelines = [
      ["ACC/AHA 2007 Preop Testing", "http://circ.ahajournals.org/content/116/17/1971.full.pdf"],
      ["Endocarditis Prophylaxis", "endocarditis.jpg"],
      ["ASRA Neuraxial Anticoags", "https://kr.ihc.com/ext/Dcmnt?ncid=520499512&tfrm=default"],
      ["ASA Guidelines", "http://www.asahq.org/For-Members/Standards-Guidelines-and-Statements.aspx"],
    ]

    @drug_dosing = [
      ["PALS Drugs", "PALS_Drugs.jpg"],
      ["Periop Antibiotic Dosing", "http://www.ashp.org/DocLibrary/BestPractices/TGSurgery.aspx"],
      ["PONV Prophylaxis", "PONV.jpg"],
    ]

    @calculators = [
      ["Allowable Blood Loss", "http://easycalculation.com/medical/allowable-blood-loss.php"],
      ["BMI / BSA", "http://www.medcalc.com/body.html"],
      ["Narcotic Equivalence Converter", "http://medcalc.com/narcotics.html"],
      ["Steroid Equivalence Converter", "http://www.medcalc.com/steroid.html"],
    ]

    @procedure_videos = [
      ["US-Guided CVC Placement", "http://www.youtube.com/watch?v=coEpM7IBzsM"],
      ["US-Guided CVC Placement", "http://www.youtube.com/watch?v=HE5QhsPRaPU", :nejm],
      ["Arterial Line Placement", "http://www.youtube.com/watch?v=8hK04ai17-k", :nejm],
      ["Cardiac Anesthesia Procedures", "http://anesthesia.stonybrook.edu/online-education#"],
      ["Lumbar Puncture", "http://www.youtube.com/watch?v=QzRBJNiyCzQ", :nejm],
      ["Spinal Anesthesia", "http://youtu.be/eblMcptvcAo"],
      ["Awake Intubation", "http://medicine.yale.edu/anesthesiology/education/media/procedures.aspx#1-163756"],
      ["Intubation Techinques", "http://vam.anest.ufl.edu/airwaydevice/index.html"]
    ]
  end

  def secret
  end

  def writtens
    @old_aba_exams = ["1990-1996 In-training Examinations", "http://www.theaba.org/Home/examinations_certifications"]
    @aba_training_programs = ["here", "http://www.theaba.org/Home/TrainingPrograms"]
    @open_anesthesia_keywords = ["Open Anesthesia", "http://www.openanesthesia.org/OpenAnesthesia.org:KeywordBrowser"]
    @study_strategy = [
      ["ITE 2014 (2/14)",                                  "http://forums.studentdoctor.net/threads/ite-2014.1056691/"],
      ["Hall vs M5 Review Questions (12/13)",              "http://forums.studentdoctor.net/threads/hall-vs-m5-review-questions.1045795/"],
      ["Question: best written board review (3/13)",       "http://forums.studentdoctor.net/threads/question-best-written-board-review.994017/"],
      ["Written board materials (12/11)",                  "http://forums.studentdoctor.net/threads/written-board-materials.876006/"],
      ["ABA Writtens Study Tips (10/10)",                  "http://forums.studentdoctor.net/threads/aba-writtens-study-tips.771032/"],
      ["Help for ABA Written Boards (3/10)",               "http://forums.studentdoctor.net/threads/help-for-aba-written-boards.712423/"],
      ["Review Courses for Writtens (3/09)",               "http://forums.studentdoctor.net/threads/review-courses-for-writtens.622094/"],
      ["Written board prep (1/09)",                        "http://forums.studentdoctor.net/threads/written-board-prep.594054/"],
      ["Written Exam results are in! (9/08)",              "http://forums.studentdoctor.net/threads/written-exam-results-are-in.565074/"],
      ["Best Review Courses for Written Board??? (11/07)", "http://forums.studentdoctor.net/threads/best-review-courses-for-written-board.467298/"],
    ]

    @commercial_courses = [
      ["10th Hour Anesthesia Review",                    "http://www.anesthesia-review.com"],
      ["Anesthesia Prep",                                "http://www.anesthesiaprep.com"],
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
    @aba_archive = ["ABA", 'http://theaba.docstream.com/videos/archive/?page=1']
    @exam_hints_pdf = ["PDF", 'http://anesthesiaboardhints.homestead.com/HintsfortheAnesthesiologyBoardExaminationRev1.6.pdf']
    @the_anesthesia_consultant = ["The Anesthesia Consultant", 'http://theanesthesiaconsultant.com/2013/08/22/advice-for-passing-the-oral-board-exams-in-anesthesiology/']

    @study_strategy = [
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
    ]

    @commercial_courses = [
      ["Board Stiff Live",                             "https://boardstifflive.com"],
      ["Dr. Jensen Best Medicine for Oral Boards",     "http://www.anesthesiologyboards.com/oral/"],
      ["GadsenJones Anesthesiology Oral Board Review", "http://www.gadsdenjones.com"],
      ["Just Oral Boards",                             "http://www.justoralboards.com"],
      ["Nail the Boards",                              "http://www.nailtheboards.com"],
      ["Michael Ho: The Essential Oral Board Review",  "http://www.anconsultants.com"],
      ["The Osler Institute",                          "http://www.osler.org/main/ane.html"],
      ["Ultimate Board Prep",                          "http://www.ultimateboardprep.com"]
    ]
  end

  def pedsboards
    @peds_exam_content = "http://www.theaba.org/pdf/PAContentOutline.pdf"
    @peds_exam_questions = "http://www.theaba.org/pdf/PASampleQuestions.pdf"
  end
end
