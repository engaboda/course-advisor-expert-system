(clear)

; template for record subject
(
    deftemplate subject
    (slot name)
    (multislot type); related to CS or IT and so on
    (slot period) ; in month
    (slot level) ; first, second, third, forth
    (slot code) ; code in db
    (multislot prerequisite); like if you want take algo you should know logarithm
    (slot dr_name); like Dr Hatem or Osama
    (slot eng_assess); like eng Nahas, Hani
    (slot start_date)
    (slot end_date)
)


; all subject with all info
(assert (subject (name Math) (type CS IT OR IS Bio) (period 3) (level 1) (code "MAT201") (prerequisite nil) (dr_name "Osama") (eng_assess "NotRemember") (start_date "2022-01-01") (end_date "2022-04-01"))
        (subject (name ComputerBasic) (type CS IT OR IS Bio) (period 3) (level 1) (code MAT201) (prerequisite nil) (dr_name Osama) (eng_assess NotRemember) (start_date 2022-01-01) (end_date 2022-04-01))
        (subject (name NetWorkBasic) (type CS IT OR IS Bio) (period 3) (level 1) (code MAT201) (prerequisite nil) (dr_name Osama) (eng_assess NotRemember) (start_date 2022-01-01) (end_date 2022-04-01))
        (subject (name WebBasic) (type CS IT OR IS Bio) (period 3) (level 1) (code MAT201) (prerequisite nil) (dr_name Osama) (eng_assess NotRemember) (start_date 2022-01-01) (end_date 2022-04-01))
        (subject (name logic) (type CS IT OR IS Bio) (period 3) (level 1) (code MAT201) (prerequisite nil) (dr_name Osama) (eng_assess NotRemember) (start_date 2022-01-01) (end_date 2022-04-01))
        (subject (name physics) (type CS IT OR IS Bio) (period 3) (level 1) (code MAT201) (prerequisite nil) (dr_name Osama) (eng_assess NotRemember) (start_date 2022-01-01) (end_date 2022-04-01))
        (subject (name os1) (type CS IT OR IS Bio) (period 3) (level 2) (code MAT201) (prerequisite nil) (dr_name Sisi) (eng_assess NotRemember) (start_date 2022-01-01) (end_date 2022-04-01))
        (subject (name os2) (type CS) (period 3) (level 4) (code MAT201) (prerequisite nil) (dr_name Mohammed_Saker) (eng_assess NotRemember) (start_date 2022-01-01) (end_date 2022-04-01))
        (subject (name golang) (type CS) (period 3) (level 4) (code MAT201) (prerequisite nil) (dr_name Judo) (eng_assess NotRemember) (start_date 2022-01-01) (end_date 2022-04-01))
        (subject (name python) (type CS) (period 3) (level 4) (code MAT201) (prerequisite nil) (dr_name Judo) (eng_assess NotRemember) (start_date 2022-01-01) (end_date 2022-04-01))
        (subject (name DB) (type CS) (period 3) (level 4) (code MAT201) (prerequisite nil) (dr_name Judo) (eng_assess NotRemember) (start_date 2022-01-01) (end_date 2022-04-01))
        (subject (name linux) (type CS) (period 3) (level 4) (code MAT201) (prerequisite nil) (dr_name Judo) (eng_assess NotRemember) (start_date 2022-01-01) (end_date 2022-04-01))
)



(
        if (not (member "python" (create$ ?skills)))
        then
            printout t "python" crlf
            (assert (f-10))
        if (not (member "go" (create$ ?skills)))
        then
            printout t "go" crlf
            (assert (go))
        if (not (member "algo" (create$ ?skills)))
        then
            printout t "algo" crlf
            (assert (algo))
        if (not (member "DB" ?skills))
        then
            printout t "DB" crlf
            (assert (DB))
        if (not (member "NetWorkBasic" (create$ ?skills)))
        then
            printout t "NetWorkBasic" crlf
            (assert (NetWorkBasic))
        if (not (member "os1" ?skills))
        then
            printout t "os1" crlf
            (assert (os1))
        if (not (member "os2" (create$ ?skills)))
        then
            printout t "os2" crlf
            (assert (os2))
        if (not (member "linux" (create$ ?skills)))
        then
            printout t "linux" crlf
            (assert (linux))
)

(watch facts)
(watch activations)
(bind ?skills linux)
;(assert (system_engineer 2 3 ?skills))
;(assert (software_engineer 2 3 ?skills))
;(assert (web_designer 2 3 ?skills))
;(member react (create$ ?skills))
;(member linux (create$ ?skills))
;(watch compilations)
;(load /home/aboda/Desktop/expert_system/enhanced_advisor.clp)
(
    defrule system_engineer_rule
    (system_engineer ?month ?hightest_school ?skills)
    =>
    (
        if (not (member linux (create$ ?skills)))
        then
            (printout t " We advice you to take Python" crlf)
    )
)
