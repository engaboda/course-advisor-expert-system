;non-IT background who
;wish to acquire ICT formal education in an accredited University environment.
;For the purpose of this paper, the study program will be called a Conversion
;Course 2 .

;The user will provide a preferred type of occupation (targeted set of skills) and
;previous knowledge (potentially usable to satisfy some of the prerequisites for
;the modules composing the study program) as requested by the system


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
    (
        slot lang
        (type STRING)
        (default "AR")
    )
)


(deffacts example
        (subject (name Math) (type CS IT OR IS Bio) (period 3) (level 1) (code "MAT201") (prerequisite nil) (dr_name "Osama") (eng_assess "NotRemember") (start_date "2022-01-01") (end_date "2022-04-01"))
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


; start for people who don't know any thing in this field
; and don't know what they need




; start add some action while user pick his path
; this flow in post graduation from FCI or CS
; we support system_engineer, software_engineer, web_designer


;unsatisfied prerequisites list
;all prerequisites are satisfied

(
    defrule system_engineer_rule
    (system_engineer ?month ?hightest_school ?skills)
    =>
    (
        if (not (member python (create$ ?skills)))
        then
            (printout t "We advice you to take Python" crlf)
            ; (assert (f-10))
    )
    (
        if (not (member go_lang (create$ ?skills)))
        then
            (printout t "We advice you to take go lang" crlf)
            ; (assert (go))
    )
    (
        if (not (member algorithm (create$ ?skills)))
        then
            (printout t "we advice you to take algorithm thinking" crlf)
            ; (assert (algo))
    )
    (
        if (not (member database (create$ ?skills)))
        then
            (printout t "we advice you to take Database" crlf)
            ; (assert (DB))
    )
    (
        if (not (member NetWorkBasic (create$ ?skills)))
        then
            (printout t "we advice you to take NetWorkBasic" crlf)
            ; (assert (NetWorkBasic))
    )
    (
        if (not (member operating_system_1 (create$ ?skills)))
        then
            (printout t "we advice you to take operating system 1" crlf)
            ; (assert (os1))
    )
    (
        if (not (member operating_system_2 (create$ ?skills)))
        then
            (printout t "we advice you to take operating system 2" crlf)
            ; (assert (os2))
    )
    (
        if (not (member linux (create$ ?skills)))
        then
            (printout t (member linux (create$ ?skills)) crlf)
            (printout t "we advice you to take linux" crlf)
            ; (assert (linux))
    )
)

(
    defrule software_engineer_rule
    (software_engineer ?month ?hightest_school ?skills)
    =>
    (
        if (not (member python (create$ ?skills)))
        then
            (printout t "we advice you to take python" crlf)
            ; (assert (f-10))
    )
    (
        if (not (member go_lang (create$ ?skills)))
        then
            (printout t "we advice you to take go lang" crlf)
            ; (assert (go))
    )
    (
        if (not (member algorithm (create$ ?skills)))
        then
            (printout t "we advice you to take algorithm" crlf)
            ; (assert (algo))
    )
    (
        if (not (member database (create$ ?skills)))
        then
            (printout t "we advice you to take Database" crlf)
            ; (assert (DB))
    )
    (
        if (not (member NetWorkBasic (create$ ?skills)))
        then
            (printout t "we advice you to take  NetWorkBasic" crlf)
            ; (assert (NetWorkBasic))
    )
    (
        if (not (member operating_system_1 (create$ ?skills)))
        then
            (printout t "we advice you to take operating system 1" crlf)
            ; (assert (os1))
    )
    (
        if (not (member operating_system_2 (create$ ?skills)))
        then
            (printout t "we advice you to take operating system2" crlf)
            ; (assert (os2))
    )
    (
        if (not (member linux (create$ ?skills)))
        then
            (printout t "we advice you to take  linux" crlf)
            ; (assert (linux))
    )
)

(
    defrule web_designer_rule
    (web_designer ?month ?hightest_school ?skills)
    =>
    (
        if (not (member algorithm (create$ ?skills)))
        then
            (printout t "we advice you to take algorithm" crlf)
            ; (assert (algo))
    )
    (
        if (not (member database (create$ ?skills)))
        then
            (printout t "we advice you to take Database" crlf)
            ; (assert (DB))
    )
    (
        if (not (member html (create$ ?skills)))
        then
            (printout t "we advice you to take html" crlf)
            ; (assert (html))
    )
    (
        if (not (member css (create$ ?skills)))
        then
            (printout t "we advice you to take css" crlf)
            ; (assert (css))
    )
    (
        if (not (member js (create$ ?skills)))
        then
            (printout t "we advice you to take js" crlf)
            ; (assert (js))
    )
    (
        if (not (member react (create$ ?skills)))
        then
            (printout t "we advice you to take react" crlf)
            ; (assert (react))
    )
)

(
    defrule backend_rule
    (backend ?month ?hightest_school ?skills)
    =>
    (
        if (not (member python (create$ ?skills)))
        then
            (printout t "we advice you to take python" crlf)
            ; (assert (f-10))
    )
    (
        if (not (member go (create$ ?skills)))
        then
            (printout t "we advice you to take go" crlf)
            ; (assert (go))
    )
    (
        if (not (member algorithm (create$ ?skills)))
        then
            (printout t "we advice you to take algo" crlf)
            ; (assert (algo))
    )
    (
        if (not (member database (create$ ?skills)))
        then
            (printout t "we advice you to take DB" crlf)
            ; (assert (DB))
    )
    (
        if (not (member NetWorkBasic (create$ ?skills)))
        then
            (printout t "we advice you to take NetWorkBasic" crlf)
            ; (assert (NetWorkBasic))
    )
    (
        if (not (member operating_system_1 (create$ ?skills)))
        then
            (printout t "we advice you to take operating system 1" crlf)
            ; (assert (os1))
    )
    (
        if (not (member operating_system_2 (create$ ?skills)))
        then
            (printout t "we advice you to take  operating system 2" crlf)
            ; (assert (os2))
    )
    (
        if (not (member linux (create$ ?skills)))
        then
            (printout t "we advice you to take linux" crlf)
            ; (assert (linux))
    )
)
; post graduation DONE from FCI or CS


; tacit knowledge
; just know what he want to be and give him one of our paths
(
    defrule software_engineer_basic_rule
    (software_engineer_basic ?desire_path)
    =>
    (
        if (member software_engineer (create$ ?desire_path))
        then
            printout t "take this of software_engineer"
            assert( (software_engineer 6 none none) )
    )
)







;(reset) ; causes facts from deffacts to be asserted
