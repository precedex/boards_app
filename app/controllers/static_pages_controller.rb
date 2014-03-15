class StaticPagesController < ApplicationController
  def welcome
  end

  def feedback
  end

  def about
  end

  def tools
    @bls_algos = [
      ["Simplified Adult BLS ", "http://crashingpatient.com/wp-content/images/acls/basic.jpg"]
    ]

    @acls_algos = [
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
    ]

    @critical_events = [
      ["Pediatric Critical Events",  "http://www.pedsanesthesia.org/newnews/Critical_Event_Checklists.pdf?201310291500"],
      ["Difficult Airway Algorithm", "Airway.jpg"],
      ["Anaphylaxis",                "Anaphylaxis.jpg"]
    ]


    @guidelines = [
      ["ACC/AHA 2007 Preop Testing", "http://circ.ahajournals.org/content/116/17/1971.full.pdf"],
      ["Endocarditis Prophylaxis",   "endocarditis.jpg"],
      ["ASRA Neuraxial Anticoags",   "https://kr.ihc.com/ext/Dcmnt?ncid=520499512&tfrm=default"],
      ["ASA Guidelines",             "http://www.asahq.org/For-Members/Standards-Guidelines-and-Statements.aspx"],
    ]

    @drug_dosing = [
      ["PALS Drugs",               "PALS_Drugs.jpg"],
      ["Periop Antibiotic Dosing", "http://www.ashp.org/DocLibrary/BestPractices/TGSurgery.aspx"],
      ["PONV Prophylaxis",         "PONV.jpg"],
    ]

    @calculators = [
      ["Allowable Blood Loss",           "http://easycalculation.com/medical/allowable-blood-loss.php"],
      ["BMI / BSA",                      "http://www.medcalc.com/body.html"],
      ["Narcotic Equivalence Converter", "http://medcalc.com/narcotics.html"],
      ["Steroid Equivalence Converter",  "http://www.medcalc.com/steroid.html"],
    ]

    @procedure_videos = [
      ["US-Guided CVC Placement",       "http://www.youtube.com/watch?v=coEpM7IBzsM"],
      ["US-Guided CVC Placement",       "http://www.youtube.com/watch?v=HE5QhsPRaPU", :nejm],
      ["Arterial Line Placement",       "http://www.youtube.com/watch?v=8hK04ai17-k", :nejm],
      ["Cardiac Anesthesia Procedures", "http://anesthesia.stonybrook.edu/online-education#"],
      ["Lumbar Puncture",               "http://www.youtube.com/watch?v=QzRBJNiyCzQ", :nejm],
      ["Spinal Anesthesia",             "http://youtu.be/eblMcptvcAo"],
      ["Awake Intubation",              "http://medicine.yale.edu/anesthesiology/education/media/procedures.aspx#1-163756"],
      ["Intubation Techinques",         "http://vam.anest.ufl.edu/airwaydevice/index.html"]
    ]
  end

  def secret
  end
end
