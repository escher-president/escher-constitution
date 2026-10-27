#set page(
    paper: "us-letter", 
    margin: 1in, 
    numbering: (..nums) => {
        let numbers = nums.pos()
        [Page #numbers.at(0) of #numbers.at(-1)]
    },
    background: rotate(24deg, text(
        size: 120pt,
        fill: rgb("e0e0e0").transparentize(50%),
        font: "Noto Sans",
        weight: "bold",
        [DRAFT]
    )),
    header: [
        _Escher House Constitution_
        #h(1fr)
        #emph[#context document.date.display("[month repr:long] [year]")]
    ]
)
// #set par.line(numbering: "1")
#set text(font: "Noto Serif", size: 11pt)

#set document(
    title: "Escher House Constitution",
    date: datetime(year: 2025, month: 10, day: 01)
)

// Define custom revision functions
#let del(body) = text(fill: red, strike(body))
#let add(body) = text(fill: blue, strong(body))

// --- TOGGLE REVISIONS ON/OFF ---
// Set to 'true' to show tracking (strikethrough/bold) 
// Set to 'false' to hide tracking (render final clean version)
#let show-revisions = true

// Show rules to handle behavior globally
#show: body => {
  if show-revisions {
    body
  } else {
    // When false: completely hide deletions, make additions normal text
    show del: none
    show add: set text(fill: black, weight: "regular")
    body
  }
}


#show outline.entry: it => {
    let loc = it.element.location()
    let page-num = counter(page).at(loc).first()
    link(
        loc,
        it.indented(
            it.prefix(),
            it.body() + box(width: 1fr, it.fill) + [#page-num]
        )
    )
}

#page(header: none)[
    #align(center + horizon)[
        #title()
        #context document.date.display("[month repr:long] [year]")\
        Formatted October 2026
        #image("douglas.jpg", width: 50%)
    ]
]

#outline(depth: 2)

= Preamble
We, the members of Escher Cooperative House, located at 1500-1520  Gilbert Court, Ann Arbor, Michigan, associate ourselves for the purpose of  providing low-cost room and board cooperatively for students in the Ann  Arbor area. As members of the Inter-Cooperative Council (ICC), a mutual  housing association, we subscribe to the following principles and values:
- All people have equal worth. 
- Control of resources to meet basic needs is a right. 
- There is value in independent contribution. 
- Inter-connectedness is critical to survival. 
- Individuals acting together are more effective than working alone.
- The purpose of the co-op is to provide services to members.
- Cooperative self-help is the most reliable resource. 
- Community is vital to success. 
- Community is a result of participation and empowerment.
- Participation and knowledge lead to empowerment. 
- Empowerment leads to actions which reflect and bring our values to  reality. 
- The co-op should benefit both current and future members.

= The Rochdale Principles
As a cooperative house, we also associate ourselves in the Spirit of the 
Rochdale Principles, as described below:
#heading(outlined: false, depth: 2)[Voluntary and Open Membership]
Cooperatives are voluntary organisations, open to all persons able to  use their services and willing to accept the responsibilities of membership,  without gender, social, racial, political or religious discrimination. 
#heading(outlined: false, depth: 2)[Democratic Member Control]
Cooperatives are democratic organisations controlled by their  members, who actively participate in setting their policies and making  decisions. People serving as elected representatives are accountable to the  membership. In primary cooperatives members have equal voting rights  (one member, one vote) and cooperatives at other levels are also organised  in a democratic manner. 
#heading(outlined: false, depth: 2)[Member Economic Participation]
Members contribute equitably to, and democratically control, the  capital of their cooperative. At least part of that capital is usually the  common property of the cooperative. Members usually receive limited  compensation, if any, on capital subscribed as a condition of membership.  Members allocate surpluses for any or all of the following purposes:  developing their cooperative, possibly by setting up reserves, part of which  at least would be indivisible; benefiting members in proportion to their  transactions with the cooperative; and supporting other activities approved  by the membership.
#heading(outlined: false, depth: 2)[Autonomy and Independence]
Cooperatives are autonomous, self-help organisations controlled by  their members. If they enter into agreements with other organisations,  including governments, or raise capital from external sources, they do so on  terms that ensure democratic control by their members and maintain their  cooperative autonomy. 
#heading(outlined: false, depth: 2)[Education, Training, and Information]
Cooperatives provide education and training for their members,  elected representatives, managers, and employees so they can contribute  effectively to the development of their co-operatives. They inform the  general public - particularly young people and opinion leaders - about the  nature and benefits of co-operation. 
#heading(outlined: false, depth: 2)[Cooperation among Cooperatives]
Cooperatives serve their members most effectively and strengthen the  cooperative movement by working together through local, national, regional  and international structures. 
#heading(outlined: false, depth: 2)[Concern for Community]
Cooperatives work for the sustainable development of their  communities through policies approved by their members.
#set heading(numbering: "1.1")
#show heading.where(level: 1): set heading(supplement: [Article]) 
#show heading.where(level: 2): set heading(supplement: [Section])
#show heading: it => {
    let number = counter(heading).display(it.numbering)
    block[#it.supplement #number: #it.body]
}
= General
== House Name
The name of the group which operates under this constitution is the 
Escher Cooperative House (hereafter referred to as the House).
== Relationship to Inter-Cooperative Council Policy
The House is a member of, and abides by, the By-laws, Standing  Rules, 
and Operating Procedures of the Board of Directors of the 
Inter-Cooperative Council at The University of Michigan (hereafter  referred to as the ICC)
(The Operating Procedures of the Board of  Directors of the ICC will hereafter be 
referred to as TOPBODICC).
== Definition of Semester
In this document, 'semester' shall mean a term at The University of 
Michigan in Ann Arbor. The Spring and Summer University terms shall
be taken together as one (1) semester. Interim periods are the
semester breaks defined by the University of Michigan (e.g. the days 
between the end of a semester and the beginning of a subsequent 
semester).
== Definition of Suites
=== 
For administrative purposes, the House is divided into nine (9) suites. The names and mailing addresses of the suites are as follows:
==== Trantor Mir
1502 Gilbert Ct., Ann Arbor, MI 48105
==== Walden III
1504 Gilbert Ct., Ann Arbor, MI 48105
==== Sinclair
1506 Gilbert Ct., Ann Arbor, MI 48105
==== Bag End
1508 Gilbert Ct., Ann Arbor, MI 48105
==== Zapata
1510 Gilbert Ct., Ann Arbor, MI 48105
==== Valhalla
1512 Gilbert Ct., Ann Arbor, MI 48105
==== Russell
1514 Gilbert Ct., Ann Arbor, MI 48105
==== Karma
1516 Gilbert Ct., Ann Arbor, MI 48105
==== Falstaff
1518 Gilbert Ct., Ann Arbor, MI 48105
===
A suite consists of the following spaces: 
====
Two common areas consisting of a kitchenette located on the first  floor and a lounge located on the second floor. 
====
A stairway opposite the common areas which connects the first and  second floors to the front entryway and the basement. 
====
Four sets of either four or five private rooms: 
====
These rooms open onto a hallway, one end of which leads to one of  the common areas and the stairway, the other end of which leads  to the neighboring suite. 
====
Each set of rooms has a common lavatory and shower.
===
All other spaces within the House are to be considered House spaces.
== Definition of Occupancy
“Low Occupancy” shall be taken to mean that the current number of  members living in the house is fewer than 50% of the current house capacity.
== Open and Restricted Spaces
Members of the House may freely use all common spaces, except for  boiler rooms, machinery rooms, the maintenance room, two (2) kitchens, pop room, and the office. The trunk room is accessible for storage of personal items via the Suite Managers or any of the House officers.
== Gender in the House
Members' gender shall be considered private health information, and  may not be requested by house officers in an official capacity.
= Membership
== Membership requirements
To become a member of the House one must:
===
Be accepted by the ICC according to the current regulations and  procedures, as defined by the By-laws and Standing Rules of the  organization in addition to TOPBODICC. 
===
Sign an ICC contract, purchase membership shares, and pay a  membership fee. 
===
Be assigned to the House as a roomer and/or boarder.
== Gender Ratio
Escher House shall have no prescribed gender ratio.
== Member Responsibilities
The members of the House are encouraged to participate in all aspects  of House government, and are held to the following duties and obligations:
===
House members must abide by all House rules. 
===
House members are responsible for the payment of bills and fines as  determined by the House and the ICC.
===
House members are personally responsible for the work assigned to them by the Work Manager.
===
House members are responsible for the upkeep of all common areas in the House and suites in accordance with the standards established by the House and the respective Suite.
===
House members are responsible for the contents of notices posted on House bulletin boards.
===
House members are responsible for attending House forums.
===
House members are responsible for attending Suite Meetings. If unable to attend they must give 24 hour notice to their respective Suite Manager. 
===
Members who fail to fulfill this requirement shall be fined \$Y. (as  defined by @9.3.8).
== Personal Disputes
===
Members should attempt to resolve disputes among themselves, but may wish to consult with a Suite Manager or other Officer to assist in mediation.
===
If the dispute cannot be resolved in this manner it shall be brought to  the President, who shall call a meeting of the Judiciary Committee (@6.1.2).
== Uncooperative Behavior Referral
===
This meeting may then elect to convene the House Judiciary Committee (@6.1.2) or may choose an alternative hearing format.
===
In accordance with current ICC policy, the House Officer Team cedes  its authority to place members on referral to the Judiciary Committee (@6.1).
===
Members placed on referral by House members may appeal this decision to the House. Complainants may not appeal this decision.
===
The President shall notify the member in question, the House, and the ICC office staff within two days of the action if a member is put on referral.
== House Charges Release
===
A member shall be released from House charges and House Labor  automatically when written documentation of one of the following  circumstances is provided: 
====
The member will be drafted into a military. The automatic release  shall occur one month before the member is inducted. 
====
The member has failed out of school. The automatic release shall  occur on the date the member leaves the house. 
====
The member or member's significant other has become pregnant.  The automatic release shall occur on the date the member is notified by their doctor. 
====
The member dies.
===
A member may request that they be released from House charges or  labor for any reason as follows: 
+ A written request must be presented to the President. This request must specify the grounds for release, as well as a date when the release would be effective.
+ At the next regularly scheduled House meeting, the House membership shall decide the issue vote (See @3.3). 
===
A member who is released from full House charges is expected to  vacate their room and the building on the effective date of the  release.
===
A member leaving the co-op for a period of fourteen (14) consecutive meal-providing days or more can be automatically released from food charges (this does not include release from labor responsibilities),  provided that they notify the Treasurer in writing prior to their departure.
== Pet Policy
===
No pets shall be allowed in the following suites: Trantor-Mir, Walden  III, Sinclair, Bag End, and Zapata.
===
Pets may be allowed in the following suites: Falstaff, Karma, Russell and Valhalla.
===
No dogs may be allowed in the House.

= House Meetings
== Regular House Meetings
===
The President plans all regular house forums.
===
A regular house meeting is comprised of two house forums, each in  either a digital forum or one of the two dining rooms.
====
Each forum will be facilitated by a Vice President (or designated proxy).
====
During periods of low occupancy a regular house meeting may be comprised of only a single forum.
===
Regular house meetings shall be held approximately every two weeks.
===
The President shall call all regular house meetings, and post an  agenda for them at least 48 hours in advance.
====
The agenda shall include the time and location of the meetings. 
====
The agenda shall be closed (i.e. no more items may be added to  that meeting's agenda) 24 hours prior to the meeting.
====
Officer reports, member feedback, and non-coop announcements shall be included in the agenda of all regular house meetings.
===
During a regular house meeting only a member of the house may  present a proposal for formal consideration by the house, though it  need not be the member who drafted the proposal.
===
New voting proposals may not be brought forth during a house meeting.
===
Proposals given to the President at least 24 hours prior to the meeting  shall be added to the House meeting agenda to be voted on.
===
No amendment of a proposal may be called during a House meeting. If a proposal fails, or is retracted by the member who brought it forth, the member may modify it and bring it to a future meeting.

== Special House Meetings
===
The President can call for a special House meeting, with at least 24 hours notice, at any time beyond regular House meetings to address specific issues.
====
The agenda may be determined by the House President and shall  be published at least 24 hours prior to the scheduled meeting time.
====
The agenda as published by the House President may be final and  is not required to include additional member proposals.
====
The House President will designate a facilitator for special House  meetings.
== Voting Procedure <3.3>
===
All votes will be held via online ballot.
====
All house members must be able to access house ballots.
====
Online ballots shall accept responses for a period of 72 hours.
====
The ballot shall contain a review of the relevant forum minutes, a clear statement of the proposal to be voted on, and spaces to vote “yes,” “no,” and “abstain.”
====
For the purpose of increasing access to house votes, a standing rule may be established to create an offline or in-person alternative to an online ballot.
===
The proposal passes if a majority of the votes cast, excluding votes cast as abstain, are in the affirmative. In the event of a multi-option proposal, should multiple mutually exclusive voting options pass, the option that receives the most “yes” votes shall pass.
===
In the event of a tie, the proposal shall fail.
===
For a vote to be valid, one-third of the House must vote.
===
Voting in regular house meetings shall be mandatory.
===
If a member fails to vote on a regular house meeting ballot, a fine of \$Y shall be imposed on that member. (Y as defined by @9.3.8).
===
In the event of an in-person meeting, the following rules shall apply:
====
Any member may designate another member as proxy, to vote in  their stead if they are unable to attend the meeting.
=====
The member designating the proxy must inform the Secretary and the facilitator of the meeting before the  
meeting. 
=====
Proxies expire after every meeting.
=====
The total number of members present plus the proxies held by those members shall make up "members  
represented."
=====
A member may be a proxy holder for a maximum of one other member.
=====
Proxies shall not be held by the facilitator of a forum.
====
No absentee ballots will be allowed.
= House Labor
== Definitions of Chore Labor
===
The Work Manager shall allocate work according to a system which  ensures that all members, unless specifically stated below, provide  three (3) hours of House chore labor per week to guarantee the  proper operation of the House. Members are required to participate in  four (4) areas of House work: House chores, Suite chores, bathroom cleans, and Work Holiday.
===
House chores shall include, but are not necessarily limited to:
==== Kitchen Work
Cooking, cleaning, and other work determined by the Work  Manager and the Kitchen Manager to be necessary for the  satisfactory operation of the House kitchens and the dining rooms.
==== Building Maintenance
Upkeep and repair of building appliances, fixtures, utility systems,  grounds, and other work determined by the house members to be  necessary to the satisfactory operation of the house.
==== Basement Cleaning
Basement floor sweeping and mopping, basement bathroom  cleaning, basement window and wall cleaning. 
==== ICC Office and Committee Work
Labor contributed to the ICC to ensure satisfactory operation of the  central office. The amount of labor contributed by the House is  determined by the current ICC policies.
==== Officer Positions
All House officers shall receive House labor credit for their  positions.
==== Assistant Positions
This is not an elected officer position. Assistants shall contribute three hours of House Labor per week.
=== Suite Chores
====
Suite chores shall include chores determined by Vice President of  Suites, Suite Manager, and Suite Members.
====
Each Suite Member shall have an equal share of suite work consisting of one hour, in addition to House labor. 
=== Bathroom Cleans
====
Each week, one member of each hall will perform the bathroom clean.
====
All members of a hall will sign up for as equal a number of weeks  as possible during each semester.
=== Work Holiday
====
Work Holiday shall be initiated by the President and coordinated by  officers at the beginning of each semester.
====
The purpose of Work Holiday is to perform jobs which do not need to be done weekly and are usually larger than regular House chores.
====
Each House member shall sign up for an equal amount of Work  Holiday labor, which shall equal 4 hours per Work Holiday unless otherwise specified by standing rule.
== Missed Labor <4.2>
===
If a member is unable to perform their work, they must find a  substitute or be excused by the Work Manager. This applies regardless  of the type of work. Absences which are not excused shall result in  penalties as follows:
====
First absence: A base fine of \$X dollars per hour. (X as defined in  @9.3.7)
====
Second absence: A fine of \$2*X per hour.
====
Third absence: A fine of \$3*X per hour, and the Work Manager is required to place the member on non-work referral.
====
Fourth Absence and above: A fine of \$3*X per hour. If this absence is a violation of a referral condition, then the Work Manager should inform the President to begin expulsion proceedings.
====
Absences accumulate within the previous 120 days of a member's residency.
===
The Work Manager, in consultation with the house, may establish methods for the forgiveness or make-up of fines.
== Inadequate or Incomplete Labor
Failure to complete the chore adequately, shall be considered as missing a shift unless a fining sheet for partial completion is defined  by standing rule or other policy. Declaring work to be substandard  requires the Work Manager, an unrelated officer, as well as the officer responsible for that house chore. (Such as Kitchen Manager, in the  case of kitchen labor).
== Missed Suite Labor
===
Failure to perform Suite/Hall labor may cause a member to be fined \$X (as defined in @9.3.7) per missed chore, if the Suite Manager and one officer agree.
===
Suite Managers must send a normative email around their suite's fining practices and leniency prior to issuing any fines during a given semester.
== Fining Procedure
===
The Work Manager shall inform the Treasurer of fines due to missed,  partially completed, or substandard shifts.
===
The Treasurer will keep a record of how many fines and absences each member has.
== Appeals
===
Appeals for fines shall be made to the Judiciary Committee. (See  @6.2)
===
The President will convene the Judiciary committee, and shall notify:
====
Committee Members
====
The member making the appeal.
====
The officer or suite manager responsible for the given fine.
===
The officer or suite manager responsible for a given fine must attend  the judiciary committee where a fine is disputed, or provide a statement in writing.
====
Failure to justify a fine to the committee will result in an automatic overturning of that fine.
====
The Work Manager or Treasurer may be designated as proxies to justify a given fine by the officer responsible. 
== Compensation for Extra Labor
Any member who works for an unexcused absent member shall  receive \$X dollars per hour from the fine paid by the absent  member. If no substitute is found and the work crew members decide  to perform the additional work, they shall split the \$X dollars per  hours of the fine paid. Any amount of the fine over \$X dollars per  hour shall go to the Amenities Fund. (X as defined in @9.3.7)
== Policy on Disability and Accommodation
Members have a right to reasonable accommodation in the house and  in their labor. To this end, good faith requests for accommodation for  disability (temporary or permanent) to the work manager or suite  managers regarding house or suite chores shall be honored. Should  there be a dispute with regards to this rule, the president shall call the  Judiciary Committee to make a decision.
= House Officers
== Officer and Co-Officer Limits
==
All officers shall begin their terms on the first day of the contract period  for which they were elected. Co-officerships shall be limited according to the following table:
#table(columns: 3, 
  table.header([*Position*], [*Normal Occupancy*], [*Low Occupancy*]),
  [House President], [2], [1],
  [Vice Presidents], [2], [1],
  [Treasurer], [1], [1],
  [Board Representatives], [5], [3],
  [Secretary], [1], [1],
  [Work Manager], [1], [1],
  [Kitchen Manager], [1], [1],
  [Maintenance Manager], [2], [1],
  [Sustainability Steward], [1], [0],
  [Social Chair], [1], [0],
  [Education Chair], [1], [0],
  [Technology Advisor], [1], [0],
  [Cooperative Health Coordinator], [1], [0]
)
===
Co-Officers will divide the labor required for a role as necessary. For  example, if 2 officers are serving as president, they may  cooperatively decide which will preside over the judiciary committee,  which will preside over the counting of house meeting ballots, and  which will run officer meetings.
== Assistants
===
Standing Rules may establish minimums for certain assistant roles  dependent on occupancy. If such a standing rule does not exist,  except for situations of low occupancy, the following shall apply: 
===
There shall be at least 1 Assistant to the President
===
There shall be at least 1 Assistant to the Work Manager
===
There shall be at least 4 Assistant Kitchen Managers
===
There shall be at least 1 Assistant to the Social Chair
===
There shall be at least 1 Assistant to the Health Coordinator
== Definitions of Officer Positions
=== President
====
Responsible to the House and the ICC. 
====
Upholds House Constitution and ideals of the ICC. 
====
Coordinates communication between officers, ICC staff and Escher  staff. 
====
Represents the House in relations with other co-op houses, all ICC  staff, Escher staff and the community at large. 
====
Has overall responsibility for House operations. Sees that officers  and committees perform their functions. 
====
Provides Vice Presidents with agenda for House forums.
====
Presides at Officer Meetings and ensures that tasks are properly  delegated and executed. Presides over all joint House Council Officer Meetings. 
====
Facilitates Judiciary Committee meetings. 
====
Gives reports to Board Representatives prior to Board meetings  regarding House operations. 
====
Attends new member orientation at the beginning of each contract period.
=== Vice President of Suites
====
Responsible to President and House. 
====
Coordinates monthly meetings of Suite Managers. 
====
Provides an agenda to Suite Managers for each suite meeting. 
====
Oversees all Suite Managers. Vice President of Suites shall fine any  Suite Manager not performing adequately according to @4.2.
====
Each Vice President shall chair one of the two House forums
=== Vice President of Relations 
==== 
Responsible to President and House. 
====
Coordinates rooming and member rosters with the ICC front desk. 
==== 
Oversees move-in/move-out for non-standard contracts or contract releases. 
====
Each Vice President shall chair one of two consecutive House forums.
====
Ensures that all occupancy changes are forwarded to the President, Treasurer, Suite Managers and Work Manager.
====
Oversees check-in and check-out procedures for standard contracts in conjunction with the Interim Managers.
=== Treasurer
====
Responsible to President and House. 
====
Prepares the House budget in consultation with the ICC, any House  staff, and the House. 
====
Presents the House budget for member consideration within 30  days following the start of the term. 
====
Assists ICC Finance Office in maintaining House financial records. V. Reviews rent rolls sent by the ICC. 
====
Maintains a document of charges, fines and credits. 
====
Keeps accounts receivable journal of House revenue. 
====
Tracks and manages cash, check, credit card, and incoming  receipts. 
====
Pays House bills as needed and maintains the House checkbook. X. Reconciles bank statements to the ledger each month. 
====
Organizes annual review meeting for any staff member of the House.
=== Board Representatives
====
Responsible to the ICC. 
====
Serves as a voting member on the ICC Board of Directors as  determined by the ICC Standing Rules. 
====
Reports on the activities of the Board and ICC to the House.
====
Informs the Board of any member concerns.
=== Secretary
====
Responsible to President and House. 
====
Takes minutes at each House meeting and publicizes them to the  House within 48 hours. 
====
Responsible for the office labor House chore. 
====
Makes sure information is received and posted in correct places. 
====
Responsible for organizing office cleaning during Work Holiday.
====
Is generally responsible for parking policy and enforcement.
=== Work Manager
====
Responsible to President and House. 
====
May prepare temporary work schedule for the first two weeks of  the semester and for the last week of the semester. 
====
Distributes work surveys to members and schedules them (so far  as possible) to their preferred jobs. Makes up the permanent work  schedule for the rest of the semester. 
====
Responsible for setting up a procedure for trading work shifts and  replacing a crew member who has not shown up for work in  consultation with shift leads. 
====
Fines according to @4.2.
=== Kitchen Manager
====
Responsible to President and House. 
====
Arranges a schedule in the beginning of the semester to train  kitchen crews. Shows them their responsibilities, including how to  operate the kitchen equipment and how to properly perform their  jobs. 
====
Designates a crew leader for each cleaning crew to ensure that that  cleaning crew has done its job properly. 
====
Fines delinquent kitchen crews according to @4.2. 
==== 
Works with the chef to prepare for inspection by the Health  Department. Makes sure the kitchen passes inspection. 
====
Works with the chef in regards to improving the quality of the food  and the performance of cooking crews. Seeks member input on  kitchen operations. 
====
Manages and supervises work holiday in the kitchen. 
====
Coordinates all kitchen maintenance related jobs with the  Maintenance Manager. 
====
Presents the evaluation of the paid chef to the House at the end of the semester.
=== Maintenance Manager
====
Responsible to President and House. 
====
Responds to any member requests for maintenance assistance that  are not related to technology. 
====
Oversees Escher maintenance crew and tasks. 
====
Checks that the conditions around the House are not detrimental to  the recruitment of new members. 
====
Fines delinquent maintenance crews according to @4.2. 
====
Assists the ICC staff and the City of Ann Arbor in conducting  building inspections. Makes sure the House passes building  inspections. 
====
Attends monthly meetings with the ICC Director of Annual  Maintenance. 
====
Brings proposals to the ICC Maintenance Committee seeking funds on behalf of the House.
=== Sustainability Steward
====
Responsible to President and House. 
====
Works on new ideas for sustainability in the House. 
====
Educates members on sustainability issues. 
====
Coordinates with Maintenance Manager on issues of water, energy,  and material waste. 
====
Coordinates a composting system in the House. 
====
Manages all returnables. 
=== Technology Advisor
====
Responsible to President and House. 
====
Supervises Escher Tech Team, prioritizes tasks and fulfills house  technology related Requests for Assistance (RFAs). 
====
Innovates new ideas for technology related improvements in the  House. 
====
Fines Escher Tech Team members for not performing assigned tasks or performing them poorly according to @4.2. 
====
Responsible for maintenance and documentation of House technology infrastructure. 
====
Sits on the ICC Tech Team with ICC approval.
=== Social Chair
====
Responsible to President and House. 
====
Organizes large House social events, at least one per semester.  III. Organizes small regular social events (discussion group, cookie  nights, movie nights, etc.). 
====
Communicates with other ICC Houses in the planning of social  events. 
====
Actively encourages and facilitates activities by interested groups  to plan activities and invite other members to participate.
====
Works with Education Chair to encourage members to gain as  much as possible from their unique international/cultural  community with activities and education. 
====
Works with Education Chair in reaching out to any Escher alumni.
=== Education Chair
====
Responsible to President and House. 
====
Assists Co-Presidents and VPs with responsibilities in case of low occupancy.
====
Collects quantitative or qualitative information with written or  digital consent from house members to guide policy decision making.
====
Organizes house educational events, at least one per semester.
====
Serves in conjunction with Board Reps and Secretary to navigate  ICC and Escher policies and communicate them to the house. 
====
Disseminates educational guides, packages, FAQs, for the  purposes of creating a civic-minded community to make informed decisions.
====
The Education Chair shall maintain an annotated version of the  current house constitution to provide house members with an  understanding of current house policies. 
====
Serves as a contact with the ICC Coordinating Committee.
=== Cooperative Health Coordinator
====
Attend health-related ICC task force or committee meetings  whenever possible if/when the ICC convenes a health-related task  force or committee, or read the minutes to stay informed. 
====
Inform the house of relevant diagnostic testing and vaccination opportunities. 
====
Maintain the private house vaccination record when relevant. 
====
Track and communicate house health policies. 
====
Stay aware of relevant local, state and federal health policies and  recommendations. 
====
Be a contact person if someone is seen violating a house health policy. 
====
If someone tests positive for a communicative disease of general risk to the House: 
=====
Keep a confidential list of positive members. 
=====
Assign an isolation bathroom that suite and provide  signage on the bathroom. 
=====
Ensure that quarantining people have access to food, supplies, and other help.
== Elections <5.5>
===
Essential House Officers for the Fall/Winter and Spring/Summer contract periods shall be elected no later than two weeks before the  end of the preceding Winter semester. 
====
This meeting shall be open to all members contracted for the applicable term, and members not contracted for the applicable term will not be able to vote on the elected positions for that term.
====
Essential House Officers are here defined as positions which require at least 1 member to serve as them during the applicable contract period according to section 5.1.
====
If any essential positions are not filled by this deadline, another  election will be held no later than 3 weeks before the beginning of the Fall/Winter contract period. This meeting will be held virtually, with incoming Fall/Winter members notified at least 2 weeks in  advance and able to vote in the resulting ballot. 
===
If any position is not filled by the start of a contract period, an  election shall be held within two weeks to elect the vacant officer  positions. 
===
Nominations for all officers shall be open for a period of no less than  one week. Nomination sheets must include a listing of the duties of  the given officer position.
===
The President shall provide time on the agenda of a House meeting for  all nominees to speak to the House.
====
At the meeting, nominees shall answer all relevant questions by  House members.
====
All nominees will be asked to leave the room for House discussion and voting. An individual who accepts their nomination at the second house forum shall not be present for private discussion of their desired position at the first house forum. 
====
No nominations may be made or accepted for a position after private discussion has begun.
===
For elections wherein only one candidate will be elected, the nominee  receiving the majority of votes becomes the officer for that position. If no member receives the majority of votes for an office, then the  two members receiving the highest number of votes shall engage in a runoff election to be held immediately after the first vote.
===
For elections wherein more than one candidate will be elected, the selection of Co-Officers for positions shall be conducted through an  approval voting system employing the first-past-the-post methodology.
====
Under this system, voters may indicate approval for as many  candidates as they wish.  
====
The candidates who receive the most approvals shall be elected to  fill the available seats for the respective position. 
====
Candidates who fail to receive more “yes” votes than “no” votes  shall not be elected, even if seats are available.
== Filling of Vacant Offices
===
If an essential officer position becomes vacant for any reason, calls for nomination shall be posted as soon as possible, and an emergency election shall be held between 7 and 10 days of this posting. This election shall be held in the same manner as a regular  election.
===
Members elected in an emergency election shall take office immediately.
===
The president may appoint an interim officer to fill a vacancy until the  emergency election is complete.
===
In the event that all House President(s) resign or are unable to serve, the Vice President(s) shall take over their responsibilities until an emergency election can be held to replace them.
== Removal of Officers
===
An officer shall be automatically removed from office if they are  expelled from the House.
===
Any officer may be removed by passed proposal at a house meeting. A minimum of 15 members or 1/4 of current House membership, whichever is higher, must participate in a vote to remove a house officer.
== Assistants
=== Assistant to the Kitchen Manager
====
A maximum of 5 Assistants to the Kitchen Manager may be chosen  at any time. 
====
Operate under the supervision of the Kitchen Manager.
=== Assistant to the Work Manager 
====
A maximum of one Assistant to the Work Manager may be chosen at any time.
====
Operate under the supervision of the Work Manager.
===
The following chores shall be considered assistantships:
====
ICC Member Assistance
====
Escher office labor
====
Any direct assistant to an officer (i.e. Assistant to the President)
====
Serving on a team such as Maintenance, Grounds, Tech, and  Basement Clean
====
Recognizing the potential for nepotism and favoritism, the Work Manager is required to solicit applications for that position. A house work survey meets this requirement.
== Interim Managers and Turnover Officers
===
The Interim Manager is an elected position which serves as all officers during the interim period between contract periods.
===
Interim Managers and Turnover Officers shall be elected in a timely manner specified by the ICC Standing Rules or five weeks prior to the  end of the contract period, whichever comes first.
===
If there is no trained President, the Interim Manager shall facilitate  the first House Meeting of the contract period to elect a new President.
= House Committees
== Judiciary Committee <6.1>
===
The Judiciary Committee is made up of:
====
All 9 Suite Managers 
====
The Vice President(s) 
====
The House President(s) (non-voting, except as tie-breaker).
=== <6.1.2>
Hears cases of: 
====
Unresolved personal disputes 
====
Requests for referral 
====
Appeals of fines 
====
Work disability
===
The Judiciary Committee, when called, shall include as many members as can meet on a reasonable timeline. 
In conducting business related to house labor, a minimum of 4 voting members must be present to conduct business.
===
The Judiciary Committee shall make decisions based on simple majority.
===
If any member of the Judiciary Committee feels they have a conflict of  interest, they must recuse themselves from the proceedings. Committee members may motion a different member to be recused  on the basis of specified conflict of interest. This shall be decided  by majority vote, excluding the member in question.
== House Council <6.2>
===
The House Council oversees and evaluates all House Officers.
===
The House Council is comprised of a representative from each suite. 
====
They shall be elected by the suite; this will constitute their suite labor. 
====
The election of each member must take place in the first suite  meeting of the contract period. 
====
No House Officer or Suite Manager may serve on the House  Council. 
====
The House Council shall determine a chair from among current  House Council Members and shall inform the members of their  responsibilities. 
====
The Education Chair shall facilitate the first House Council meeting until the chair is elected. 
===
House Councilors may be removed by passed proposal at a suite meeting. A minimum of 1/4 of current suite membership must participate in a vote to remove a House Councilor.
=== Responsibilities
====
Each House Council member shall be well-versed in the  responsibilities of all officers as laid out in the constitution.
====
House Council shall meet at least once per month to evaluate officer performance. 
====
The House Council must post a report that evaluates all House Officers publicly each month. 
====
House Council Members must report back to their suites and Suite  Managers on their activities on the Council. 
===
House Officers must report to house council regularly, on a schedule determined by the current house council.
===
The House Council may fine any House Officer for failure to perform  the duties specified in the Constitution.
====
A simple majority vote must be held to fine a House Officer.
====
The Chair cannot vote unless there is a tie, in which case the chair  must vote. 
====
The reason for the fine must be given in the House Council Report.
===
House Council may be dissolved in periods of low occupancy.
===
The House Council may propose the removal of any House Officer. (@5.5)
===
The House Council may designate a new chair by simple majority vote  at a meeting facilitated by the Education Chair.
= Suite Organization
== Suite Managers
=== Responsibilities
====
Responsible to the President, Vice President of Suites, and House.
====
Must attend any ICC trainings which pertain to their position.
====
Must represent their suite on the Judiciary Committee.
====
Must hold monthly suite meetings to update suite members on House operations and rules. Meeting time must be set 72 hours in  advance, and suite members must give 24 hours notice to the suite manager if unable to attend.
====
Must post and be familiar with all Suite Standing Rules. 
====
Must inform the President and Vice President of Relations of any  changes in occupancy within the Suite when they occur.
====
Must check out departing members' rooms and assess any  damages that have occurred for non-standard contracts or early releases.
====
Holds a copy of the suite master key and the code to the trunk room.
===
There shall be one suite manager per suite.
===
The role of Suite Manager fulfills their suite labor requirement but does not constitute a full House Officer position. Suite Managers may not also be House Officers.
===
Suite Managers are elected by the members of the suites in which they reside.
====
At least one week prior to the election, the duties of the Suite Manager shall be posted prominently within the suite.
====
Suite Managers shall be elected by members in attendance of the first suite meeting of a given semester.
=====
During discussion of the candidates and voting, members  running for Suite Manager must leave the room in which the meeting is being held.
=====
The vote shall be conducted by show of hands, first asking  for members in favor of a candidate and then asking for members against. Members must receive more “Yes” votes than “No” votes to be elected.
=====
In the case of multiple members running for the position  of Suite Manager, the member receiving the most “Yes” votes shall be elected.
===
Suite Managers may be removed by passed proposal at a suite meeting. A minimum of 1/4 of current suite membership must participate in a  vote to remove a Suite Manager.
== Suite Rules
===
Suites may establish Suite Standing Rules by majority vote during  Suite Meetings regarding their facilities and expectations. These may include, but are not limited to:
====
Quiet Hours 
====
Coverage Expectations 
====
Kitchen Usage Expectations
===
No suite may deny access or use of its facilities to any House member,  but all House members are expected to conform to the posted Suite Rules.
===
It is the responsibility of each suite member to ensure that their suite  is a clean, well-organized, and cooperative environment.
===
The House may establish in standing rules a system by which suite members are fined for failing to uphold their responsibility to their suites.
= Finances
== The General Fund
===
All House money that is not placed into the Amenities Fund (@8.2) shall be placed in the General Fund in accordance with current ICC accounting procedures.
===
The House checkbook shall be drawn from the General Fund. The  President, Treasurer, and Vice Presidents shall be eligible to sign on  the House checkbook.
===
Money in the General Fund may only be spent in accordance with the budget approved by the House. For money to be spent that is not a part of the budget, it must be approved by the House.
== The Amenities Fund <8.2>
===
Money shall be placed into the House Amenities Fund by the ICC in  accordance with current ICC accounting procedures.
===
Money in the Amenities Fund may be spent in accordance with current ICC rules.
===
Requests for money from the Amenities Fund must be approved by the House.
===
Approved Amenities requests shall be forwarded to the Treasurer for  proper recording and payment.
===
Up to \$800 per contract period may be spent by officers to repair or replace broken appliances without obtaining house approval. Such purchases must be approved by the Treasurer, President, and one  other officer. This must be reported at the next House meeting.
== Ad-hoc committees
At any time, ad-hoc committees may be formed by the House or the  President to meet any need. A chair shall be designated for all ad-hoc committees.
= Standing Rules
== Definition of Standing Rules
Changes to House operations that do not affect the rules presented in this Constitution are called Standing Rules. To be in effect, this Constitution does not need to be amended. 
== Process of Enacting Standing Rules
===
The Standing Rule is presented during a House Meeting.
===
The proposed Standing Rule shall state:
====
What the proposed Standing Rule is.
====
When the proposed Standing Rule would take effect. (If  unspecified, the rule would take effect immediately)
===
The Standing Rule will be voted on in accordance with the general House voting process, as defined in @3.3.
===
Standing Rules must be in written form and should be included with  House policy alongside this Constitution.
===
A Standing Rule may be overturned by proposal at any regular House meeting.
== Defined Standing Rules
===
A parking policy will be passed as a standing rule. In absence of such a rule, if there is a shortage of parking spaces  for members, a lottery will be administered by the Secretary.
===
A trunk room policy will be passed as a standing rule. In absence of such a rule, policy relating to the trunk room (basement room 12) will be defined by the VP of Suites.
===
An infectious disease policy will be passed as a standing rule. In absence of such a rule, infectious disease policy will be defined by the Cooperative Health Coordinator.
===
The rules of order for House forums will be defined by a standing rule. In absence of such a rule, House forums shall operate in general accordance with parliamentary procedure laid out in the current _Robert's Rules of Order_ (https://robertsrules.com/).
===
A pet approval policy will be passed as a standing rule. In absence of such a rule, individual pets must be approved in a House meeting and must be approved by 85% in the suite  meeting.
===
An occupancy policy will be established as a standing rule.
====
No standing rule shall prevent members from signing new contracts for their current room in its current state.
====
This rule will determine how many of the House's large rooms will  be “doubles” (designated to house two members) and how many will be “large singles.” (generally designated to house one member)
====
This policy will also determine which specific rooms will be  designated as doubles and which will be designated as “large singles.”
====
In absence of such a rule, rooms will remain in their current configuration.
=== <9.3.7>
For all labor-related fines, a value of “X” shall be determined by standing rule to correspond to the per-hour value of labor. 
=== <9.3.8>
Should a relevant standing rule not exist, “X” shall equal \$15.
===
For all meeting-related fines, a value of “Y” shall be determined by standing rule.
===
Should a relevant standing rule not exist, “Y” shall equal \$3.
= Amendment
== Structure for Future Amendments
===
Amendments shall be posted in all bathrooms for not less than 72  hours before a House Meeting where they shall be discussed.
===
A ballot containing a review of the relevant forum minutes, a clear statement of the amendment to be voted on, and spaces to vote  “yes,” “no,” and “abstain” will be issued to the mailboxes or doors of  all members of the house after the second forum of the meeting.
===
These ballots must be returned to the President within 72 hours of distribution to be counted. The President and Vice Presidents shall count the ballots.
===
In order for a Constitutional Amendment to pass, the vote as counted by the President and Vice Presidents must satisfy these requirements:
==== Participation
Votes submitted (including submitted abstentions) must exceed 1/3 of the current occupancy of the House.
==== Approval
A Constitutional Amendment Vote passes the approval requirement if greater than or equal to 1/2 of the votes cast (excluding submitted abstentions) are in the affirmative.