// School Class
class School {
    constructor(name, students, date) {
      this.name = name;
      this.students = students;
      this.date = date;
    }
  }
  
  // Circle Class
  class Circle {
    constructor(position, circleColor) {
      this.position = position;
      this.circleColor = circleColor;
    }
}



  // LARGE list of School objects
  let schools = [
new School("Carter G. Woodson Middle School", 630, "Sept. 26, 2000"),
new School("Mount Healthy North Junior High", 310, "Sept. 18, 2000"),
new School("Dimmitt Middle School", 200, "July 17, 2000"),
new School("Lake Worth Middle School", 1410, "May 26, 2000"),
new School("Carmichael Elementary School", 360, "May 10, 2000"),
new School("Hugo High School", 460, "April 6, 2000"),
new School("Buell Elementary School", 420, "Feb. 29, 2000"),
new School("Tecumseh High School", 660, "Feb. 24, 2000"),
new School("Horn Lake High School", 590, "Feb. 22, 2000"),
new School("Duke Ellington Elementary School", 680, "Feb. 14, 2000"),
new School("Alicia Reyes Elementary School", 680, "Jan. 26, 2000"),
new School("Ridgewood High School", 920, "Jan. 19, 2000"),
new School("Fort Gibson Middle School", 200, "Dec. 6, 1999"),
new School("Deming Middle School", 700, "Nov. 19, 1999"),
new School("Dorchester High School", 1030, "Nov. 3, 1999"),
new School("John Bartram High School", 2920, "Oct. 4, 1999"),
new School("Heritage High School", 1270, "May 20, 1999"),
new School("Scotlandville Middle School", 540, "April 22, 1999"),
new School("Columbine High School", 1820, "April 20, 1999"),
new School("Vicksburg High School", 1040, "Sept. 10, 2003"),
new School("Red Lion Area Junior High School", 890, "April 24, 2003"),
new School("Delhi Middle School", 360, "April 15, 2003"),
new School("John McDonogh High School", 1170, "April 14, 2003"),
new School("Cardozo High School", 690, "April 1, 2003"),
new School("Ranum High School", 1330, "Feb. 5, 2003"),
new School("Mount Pleasant High School", 1520, "Jan. 22, 2003"),
new School("Liberty School", 270, "Nov. 7, 2002"),
new School("Lincoln High School", 910, "Oct. 29, 2002"),
new School("Benjamin Tasker Middle School", 1270, "Oct. 7, 2002"),
new School("Gardena High School", 2970, "Feb. 6, 2002"),
new School("Martin Luther King, Jr. High School", 2090, "Jan. 15, 2002"),
new School("Caro Learning Center", 140, "Nov. 12, 2001"),
new School("Redondo Union High School", 1920, "Oct. 26, 2001"),
new School("Latonia Elementary School", 480, "Sept. 12, 2001"),
new School("Belmont High School", 3400, "July 30, 2001"),
new School("Ennis High School", 1180, "May 15, 2001"),
new School("Monroe City Alternative Center", 60, "April 20, 2001"),
new School("Lew Wallace High School", 580, "March 30, 2001"),
new School("Granite Hills High School", 2640, "March 22, 2001"),
new School("Bishop Neumann Junior-Senior High", 210, "March 7, 2001"),
new School("Santana High School", 1760, "March 5, 2001"),
new School("Pearl C. Anderson Middle School", 810, "Feb. 6, 2001"),
new School("Lake Clifton Eastern High School", 2070, "Jan. 17, 2001"),
new School("Hueneme High School", 2570, "Jan. 10, 2001"),
new School("Saginaw High School", 1090, "Oct. 20, 2005"),
new School("Farmington High School", 1070, "Oct. 11, 2005"),
new School("Harlan Community Academy High School", 1280, "Sept. 13, 2005"),
new School("Sojourner Truth High School", 110, "Sept. 2, 2005"),
new School("Maury Middle School", 560, "Aug. 25, 2005"),
new School("Highland Elementary School", 410, "May 17, 2005"),
new School("Canton High School", 490, "April 7, 2005"),
new School("Red Lake High School", 300, "March 21, 2005"),
new School("Maplewood Comprehensive High School", 1040, "March 9, 2005"),
new School("Bowen High School", 190, "Feb. 8, 2005"),
new School("Woodruff High School", 940, "Jan. 26, 2005"),
new School("Emmanuel Christian Academy", 110, "Dec. 7, 2004"),
new School("Booker T. Washington High School", 350, "Nov. 12, 2004"),
new School("Thurgood Marshall High School", 250, "Oct. 21, 2004"),
new School("Wirt High School", 730, "Sept. 15, 2004"),
new School("Proviso East High School", 1920, "Aug. 30, 2004"),
new School("Castlemont High School", 1360, "June 9, 2004"),
new School("T.M. Peirce Elementary School", 420, "Feb. 11, 2004"),
new School("Columbia High School", 1350, "Feb. 9, 2004"),
new School("Ballou High School", 1010, "Feb. 2, 2004"),
new School("East Mecklenburg High School", 2110, "Nov. 13, 2003"),
new School("Rio Cazadero High School", 290, "Oct. 1, 2003"),
new School("Burns Middle School", 970, "Sept. 25, 2003"),
new School("Rocori High School", 770, "Sept. 24, 2003"),
new School("Lewis and Clark High School", 1850, "Sept. 22, 2003"),
new School("George S. Middleton High School", 1670, "June 6, 2007"),
new School("Liberty Memorial Middle School", 460, "May 15, 2007"),
new School("Springwater Trail High School", 150, "April 10, 2007"),
new School("Chicago Vocational Career Academy", 1870, "April 9, 2007"),
new School("Herbert Henry Dow High School", 1480, "March 7, 2007"),
new School("William L.Sayre High School", 600, "Jan. 18, 2007"),
new School("Robert A. Taft Information Technology High School", 690, "Jan. 8, 2007"),
new School("Henry Foss High School", 1620, "Jan. 3, 2007"),
new School("Memorial Middle School", 340, "Oct. 9, 2006"),
new School("West Nickel Mines Amish School", 20, "Oct. 2, 2006"),
new School("Weston High School", 110, "Sept. 29, 2006"),
new School("Platte Canyon High School", 440, "Sept. 27, 2006"),
new School("South Hills High School", 1310, "Sept. 8, 2006"),
new School("Orange High School", 1060, "Aug. 30, 2006"),
new School("Venice High School", 1600, "June 5, 2006"),
new School("Pine Middle School", 800, "March 14, 2006"),
new School("Roseburg High School", 1900, "Feb. 23, 2006"),
new School("Westing house High School", 280, "Feb. 21, 2006"),
new School("Lakeview Centennial High School", 2020, "Jan. 27, 2006"),
new School("Will C. Wood High School", 1980, "Jan. 23, 2006"),
new School("Indian River High School", 1700, "Jan. 18, 2006"),
new School("Milwee Middle School", 1040, "Jan. 13, 2006"),
new School("Mary McLeod Bethune Academy", 340, "Jan. 11, 2006"),
new School("Central High School", 1120, "Dec. 6, 2005"),
new School("Campbell County High School", 1330, "Nov. 8, 2005"),
new School("Sullivan Central High School", 1030, "Aug. 30, 2010"),
new School("South Gate High School", 3050, "May 18, 2010"),
new School("Woodrow Wilson High School", 1210, "April 28, 2010"),
new School("Deer Creek Middle School", 470, "Feb. 23, 2010"),
new School("Discovery Middle School", 930, "Feb. 5, 2010"),
new School("Booker T. Washington High School", 310, "Dec. 11, 2009"),
new School("Carolina Forest High School", 1820, "Oct. 16, 2009"),
new School("Mattituck Junior-Senior High School", 750, "Oct. 8, 2009"),
new School("Virginia Randolph Community High School", 270, "Sept. 16, 2009"),
new School("Stamford Academy", 120, "Sept. 8, 2009"),
new School("Larose-Cut Off Middle School", 470, "May 18, 2009"),
new School("Ribault High School", 1050, "March 10, 2009"),
new School("John Muir Elementary School", 320, "Feb. 20, 2009"),
new School("Central High School", 850, "Feb. 17, 2009"),
new School("Dillard High School", 1630, "Nov. 12, 2008"),
new School("Central High School", 1120, "Aug. 21, 2008"),
new School("Roosevelt High School", 2540, "April 16, 2008"),
new School("Friends of Children Head Start center", 90, "March 18, 2008"),
new School("E.O. Green Junior High School", 990, "Feb. 12, 2008"),
new School("Mitchell High School", 1030, "Feb. 11, 2008"),
new School("Notre Dame Elementary School", 150, "Feb. 7, 2008"),
new School("Hamilton High School", 1470, "Feb. 4, 2008"),
new School("Crossroads Charter High School", 220, "Jan. 16, 2008"),
new School("Groves High School", 1420, "Oct. 15, 2007"),
new School("SuccessTech Academy", 240, "Oct. 10, 2007"),
new School("Price Middle School", 370, "Jan. 31, 2013"),
new School("Taft Union High School", 870, "Jan. 10, 2013"),
new School("Apostolic Revival Center and Christian School", 20, "Jan. 7, 2013"),
new School("Sandy Hook Elementary School", 420, "Dec. 14, 2012"),
new School("Normal Community High School", 1760, "Sept. 7, 2012"),
new School("Perry Hall High School", 2050, "Aug. 27, 2012"),
new School("Mary Scroggs Elementary School", 570, "May 25, 2012"),
new School("LeFlore High School", 850, "March 15, 2012"),
new School("Episcopal School of Jacksonville", 800, "March 6, 2012"),
new School("Chardon High School", 980, "Feb. 27, 2012"),
new School("Armin Jahr Elementary School", 380, "Feb. 22, 2012"),
new School("Walpole Elementary School", 130, "Feb. 10, 2012"),
new School("North Forest High School", 1180, "Jan. 10, 2012"),
new School("Cummings Middle School", 690, "Jan. 4, 2012"),
new School("Cape Fear High School", 1460, "Oct. 24, 2011"),
new School("Ross Elementary School", 420, "April 19, 2011"),
new School("Sheeler Charter High School", 430, "April 13, 2011"),
new School("Martinsville West Middle", 290, "March 25, 2011"),
new School("Louisiana Schnell Elementary School", 390, "Feb. 2, 2011"),
new School("Gardena High School", 2130, "Jan. 18, 2011"),
new School("Millard South High School", 1890, "Jan. 5, 2011"),
new School("Marinette High School", 640, "Nov. 29, 2010"),
new School("Kelly Elementary School", 440, "Oct. 8, 2010"),
new School("Alisal High School", 2300, "Oct. 1, 2010"),
new School("Socastee High School", 1350, "Sept. 21, 2010"),
new School("Fern Creek High School", 1430, "Sept. 30, 2014"),
new School("Albemarle High School", 430, "Sept. 30, 2014"),
new School("Stellar Leadership Academy", 210, "Sept. 9, 2014"),
new School("Reynolds High School", 2600, "June 10, 2014"),
new School("D. H. Conley High School", 1470, "April 9, 2014"),
new School("Benjamin Banneker High School", 1420, "March 25, 2014"),
new School("Success Academy", 160, "Feb. 20, 2014"),
new School("Salisbury High School", 790, "Feb. 10, 2014"),
new School("Bend High School", 1520, "Feb. 7, 2014"),
new School("President Theodore Roosevelt High", 1310, "Jan. 28, 2014"),
new School("Rebound High School", 90, "Jan. 27, 2014"),
new School("Delaware Valley Charter School", 630, "Jan. 17, 2014"),
new School("King Elementary School", 500, "Jan. 15, 2014"),
new School("Berrendo Middle School", 580, "Jan. 14, 2014"),
new School("Liberty Technology Magnet High School", 740, "Jan. 9, 2014"),
new School("Arapahoe High School", 2110, "Dec. 13, 2013"),
new School("West Orange High School", 3480, "Dec. 4, 2013"),
new School("Newman Elementary School", 690, "Oct. 23, 2013"),
new School("Sparks Middle School", 670, "Oct. 21, 2013"),
new School("Lanier High School", 1440, "Oct. 15, 2013"),
new School("Agape Christian Academy", 300, "Oct. 4, 2013"),
new School("Carver High School", 520, "Aug. 30, 2013"),
new School("Ronald E. McNair Discovery Learning Academy", 760, "Aug. 20, 2013"),
new School("Redland Middle School", 450, "May 23, 2013"),
new School("La Salle High School", 650, "April 29, 2013"),
new School("North Park Elementary School", 490, "April 10, 2017"),
new School("Robert E. Lee High School", 750, "March 16, 2017"),
new School("Scotlandville Magnet High School", 1290, "Feb. 6, 2017"),
new School("West Liberty-Salem Middle/High School", 570, "Jan. 20, 2017"),
new School("Mueller Park Jr. High", 750, "Dec. 1, 2016"),
new School("Bay City Western High School", 1160, "Nov. 11, 2016"), 
new School("Union Middle School", 840, "Oct. 25, 2016"),
new School("June Jordan High School for Equity", 230, "Oct. 18, 2016"),
new School("Linden-McKinley STEM Academy", 660, "Oct. 13, 2016"),
new School("CF Vigor High School", 350, "Oct. 11, 2016"),
new School("Townville Elementary School", 270, "Sept. 28, 2016"),
new School("Alpine High School", 270, "Sept. 8, 2016"),
new School("Huffman High School", 1330, "March 15, 2016"),
new School("Madison High School", 1430, "Feb. 29, 2016"),
new School("Independence High School", 1960, "Feb. 12, 2016"),
new School("Benjamin Franklin High School", 560, "Jan. 29, 2016"),
new School("Harmony Grove High School", 360, "Jan. 13, 2016"),
new School("Lecanto High School", 1450, "Nov. 10, 2015"),
new School("Vereen School", 30, "Nov. 5, 2015"),
new School("Karen Wagner High School", 2100, "Oct. 15, 2015"),
new School("Harrisburg High School", 740, "Sept. 30, 2015"),
new School("W.S. Hornsby Elementary School", 690, "Aug. 25, 2015"),
new School("North Thurston High School", 1370, "April 27, 2015"),
new School("Hand in Hand Montessori", 260, "Jan. 26, 2015"),
new School("Marysville Pilchuck High School", 1160, "Oct. 24, 2014"),
new School("Jackson High School", 1050, "April 19, 2018"),
new School("Eupora High School", 430, "March 28, 2018"),
new School("Great Mills High School", 1420, "March 20, 2018"),
new School("Douglass Park Elementary School", 380, "March 19, 2018"),
new School("Big Sky High School", 990, "March 16, 2018"),
new School("Seaside High School", 980, "March 13, 2018"),
new School("Huffman High School", 1330, "March 7, 2018"),
new School("Dalton High School", 1700, "Feb. 28, 2018"),
new School("Marjory Stoneman Douglas High School", 2930, "Feb. 14, 2018"),
new School("Salvador B. Castro Middle School", 320, "Feb. 1, 2018"),
new School("Murphy High School", 1950, "Jan. 25, 2018"),
new School("Marshall County High School", 1280, "Jan. 23, 2018"),
new School("Italy High School", 260, "Jan. 22, 2018"),
new School("The NET Charter High School", 150, "Jan. 22, 2018"),
new School("High Point Central High School", 1340, "Dec. 11, 2017"),
new School("Aztec High School", 840, "Dec. 7, 2017"),
new School("Rancho Tehama Elementary School", 90, "Nov. 14, 2017"),
new School("Benjamin Banneker High School", 1430, "Nov. 9, 2017"),
new School("Pattengill Academy", 470, "Nov. 3, 2017"),
new School("Mattoon High School", 970, "Sept. 20, 2017"),
new School("Freeman High School", 300, "Sept. 13, 2017"),
new School("Columbus Scioto 6-12", 110, "Sept. 8, 2017"),
new School("Warren Elementary School", 260, "June 16, 2017"),
new School("Greensboro High School", 430, "May 24, 2017"),
new School("Moss Bluff Elementary School", 890, "May 15, 2017"),
new School("New Joseph Bonnheim Community Charter School", 340, "April 3, 2019"),
new School("Prescott High School", 420, "April 1, 2019"),
new School("Blountsville Elementary School", 580, "March 22, 2019"),
new School("Highlands Elementary School", 290, "March 1, 2019"),
new School("Robert E. Lee High School", 1400, "Feb. 26, 2019"),
new School("V. Sue Cleveland High School", 1200, "Feb. 14, 2019"),
new School("Frederick Douglass High School", 810, "Feb. 8, 2019"),
new School("North High School", 350, "Jan. 16, 2019"),
new School("Cascade Middle School", 310, "Jan. 11, 2019"),
new School("Dennis Intermediate School", 600, "Dec. 13, 2018"),
new School("Simonsdale Elementary School", 650, "Nov. 20, 2018"),
new School("Butler High School", 1980, "Oct. 29, 2018"),
new School("Paul Laurence Dunbar School", 380, "Oct. 22, 2018"),
new School("Battle Creek Academy", 100, "Oct. 12, 2018"),
new School("Denali Montessori Elementary School", 390, "Oct. 3, 2018"),
new School("Lawrence Orr Elementary School", 790, "Sept. 24, 2018"),
new School("Canyon Springs High School", 500, "Sept. 11, 2018"), 
new School("Villa Heights Elementary School", 90, "Aug. 30, 2018"),
new School("Noblesville West Middle School", 1250, "May 25, 2018"),
new School("Santa Fe High School", 1350, "May 18, 2018"),
new School("Dixon High School", 740, "May 16, 2018"),
new School("Highland High School", 1460, "May 11, 2018"),
new School("Highland High School", 580, "April 25, 2018"),
new School("Benjamin Elijah Mays High School", 1160, "April 23, 2018"),
new School("Forest High School", 2020, "April 20, 2018"),
new School("Ribault High School", 700, "Oct. 9, 2020"),
new School("Sagemont School", 600, "March 5, 2020"),
new School("Cesar Chavez Community School", 100, "Feb. 21, 2020"),
new School("Antioch High School", 1910, "Feb. 19, 2020"),
new School("West High School", 1350, "Feb. 13, 2020"),
new School("McAuliffe Elementary School", 640, "Jan. 23, 2020"),
new School("Bellaire High School", 3240, "Jan. 14, 2020"),
new School("Catholic Academy of New Haven", 270, "Dec. 16, 2019"),
new School("Decatur High School", 960, "Dec. 10, 2019"),
new School("Sacred Heart School", 200, "Dec. 10, 2019"),
new School("Oshkosh West High School", 1580, "Dec. 3, 2019"),
new School("Waukesha South High School", 870, "Dec. 2, 2019"),
new School("Saugus High School", 2270, "Nov. 14, 2019"),
new School("Esteban Torres High School", 1740, "Nov. 13, 2019"),
new School("Achievement Academy", 310, "Nov. 11, 2019"),
new School("Ridgway High School", 230, "Oct. 22, 2019"),
new School("Aiton Elementary School", 220, "Sept. 25, 2019"),
new School("South Aiken High School", 700, "Sept. 10, 2019"),
new School("Hollenbeck Middle School", 950, "Aug. 27, 2019"),
new School("Blount Elementary School", 150, "Aug. 8, 2019"),
new School("Hendley Elementary School", 350, "June 12, 2019"),
new School("Menta Academy North", 90, "June 10, 2019"),
new School("STEM School Highlands Ranch", 1720, "May 7, 2019"),
new School("Flex High School", 110, "April 17, 2019"),
new School("Saint Clair Evans Academy", 350, "April 3, 2019"),
new School("Heritage High School", 1090, "Sept. 20, 2021"),
new School("Tri-County Education Center", 330, "Sept. 8, 2021"),
new School("LaVergne High School", 950, "Sept. 7, 2021"),
new School("Mount Tabor High School", 1380, "Sept. 1, 2021"),
new School("New Hanover High School", 1420, "Aug. 30, 2021"),
new School("Orangeburg-Wilkinson High School", 500, "Aug. 18, 2021"),
new School("Washington Middle School", 410, "Aug. 13, 2021"),
new School("Lithonia High School", 1260, "Aug. 12, 2021"),
new School("Saint Francis de Sales School", 610, "Aug. 6, 2021"),
new School("North Forest High School", 480, "June 9, 2021"),
new School("Rigby Middle School", 770, "May 6, 2021"),
new School("Ware Shoals High School", 250, "May 5, 2021"),
new School("Mary Evelyn Castle Elementary School", 620, "April 30, 2021"),
new School("Urban Dove Team Charter School", 50, "April 29, 2021"),
new School("Smyrna Middle School", 490, "April 27, 2021"),
new School("Plymouth Middle School", 720, "April 26, 2021"),
new School("Austin-East Magnet High", 440, "April 12, 2021"),
new School("Selma High School", 400, "April 1, 2021"),
new School("Bishop Hartley High School", 330, "March 9, 2021"),
new School("Edwards Elementary School", 230, "March 8, 2021"),
new School("Achievement First Amistad High School", 260, "March 4, 2021"),
new School("Watson Chapel Junior High", 240, "March 1, 2021"),
new School("Wayne Central Middle School", 340, "March 1, 2021"),
new School("Hendersonville Middle School", 140, "Nov. 24, 2020"),
new School("Lincoln Elementary School", 450, "Nov. 13, 2020"),
new School("Mount Vernon High School", 1210, "Feb. 8, 2022"),
new School("South Education Center", 60, "Feb. 1, 2022"),
new School("Magruder High School", 1570, "Jan. 21, 2022"),
new School("Seminole High School", 3770, "Jan. 19, 2022"),
new School("Oliver Citywide Academy", 90, "Jan. 19, 2022"),
new School("Auburn High School", 1680, "Jan. 4, 2022"),
new School("Eau Claire High School", 250, "Dec. 16, 2021"),
new School("West Charlotte High School", 1270, "Dec. 13, 2021"),
new School("Great Oaks Charter School", 270, "Dec. 9, 2021"),
new School("Jesse C. Carson High School", 1150, "Dec. 9, 2021"),
new School("Sam Rayburn High School", 2530, "Dec. 1, 2021"),
new School("Oxford High School", 1740, "Nov. 30, 2021"),
new School("Cesar Chavez High School", 2400, "Nov. 29, 2021"),
new School("Thornton Township High School", 780, "Nov. 24, 2021"),
new School("Hinkley High School", 1940, "Nov. 19, 2021"),
new School("P.S. 44", 130, "Nov. 16, 2021"),
new School("Poughkeepsie High School", 570, "Nov. 15, 2021"),
new School("Cathedral School", 610, "Oct. 26, 2021"),
new School("James McDade Classical School", 160, "Oct. 13, 2021"),
new School("Wendell Phillips Academy High School", 290, "Oct. 12, 2021"),
new School("Little Rock Central High School", 2250, "Oct. 12, 2021"),
new School("Timberview High School", 1760, "Oct. 6, 2021"),
new School("YES Prep Southwest Secondary", 930, "Oct. 1, 2021"),
new School("Newton County Elementary School", 730, "Sept. 30, 2021"),
new School("Cummings K-8 Optional School", 460, "Sept. 30, 2021"),
new School("John Finney High School", 120, "July 20, 2022"),
new School("Walnut Park Elementary", 180, "June 9, 2022"),
new School("Ulysses S. Grant High School", 940, "June 1, 2022"),
new School("Robb Elementary School", 500, "May 24, 2022"),
new School("Walt Disney Magnet School", 1420, "May 17, 2022"),
new School("Mexia High School", 490, "May 17, 2022"),
new School("Alexander W. Dreyfoos School of Arts", 1260, "May 13, 2022"),
new School("Heights High School", 2270, "May 12, 2022"),
new School("Aspen Ridge Elementary School", 700, "April 26, 2022"),
new School("Edmund Burke School", 150, "April 22, 2022"),
new School("Mott-Regent School", 90, "April 21, 2022"),
new School("Pine Bluff High School", 820, "April 11, 2022"),
new School("Erie High School", 2100, "April 5, 2022"),
new School("Lowellville Junior/Senior High School", 200, "April 5, 2022"),
new School("Tanglewood Middle", 800, "March 31, 2022"),
new School("West Philadelphia Achievement Charter Elementary School", 430, "March 31, 2022"),
new School("Western High School", 2540, "March 29, 2022"),
new School("Rippon Middle School", 1270, "March 22, 2022"),
new School("Eisenhower High School", 950, "March 15, 2022"),
new School("De Anza High School", 690, "March 11, 2022"),
new School("North Gardens High School", 310, "March 9, 2022"),
new School("East High School", 1100, "March 7, 2022"),
new School("Olathe East High School", 1820, "March 4, 2022"),
new School("Jonesboro High School", 1280, "Feb. 28, 2022"),
new School("Liberty Point International School", 260, "Feb. 22, 2022"),
new School("Ridgeview Jr. High School", 130, "Feb. 2, 2023"),
new School("Geary Elementary School", 70, "Jan. 31, 2023"),
new School("Gila Ridge High School", 2000, "Jan. 30, 2023"),
new School("Taylorsville High School", 2570, "Jan. 26,2023"),
new School("Plaza Academy", 40, "Jan. 24, 2023"),
new School("William Penn High School", 2110, "Jan. 10, 2023"),
new School("Booker T. Washington High School", 360, "Jan. 10, 2023"),
new School("Richneck Elementary School", 540, "Jan. 6, 2023"),
new School("Beechcroft High School", 580, "Jan. 6, 2023"),
new School("Benjamin Franklin High School", 950, "Jan. 5, 2023"),
new School("Cleveland High School", 1510, "Dec. 12, 2022"),
new School("Suitland High School", 1900, "Dec. 8, 2022"),
new School("Fuquay-Varina Middle School", 1070, "Dec. 8, 2022"),
new School("Freedom Preparatory High School", 260, "Dec. 5, 2022"),
new School("South Vermillion High School", 490, "Nov. 17, 2022"),
new School("Ball Elementary School", 560, "Nov. 11, 2022"),
new School("Ingraham High School", 1370, "Nov. 8, 2022"),
new School("Central Visual and Performing Arts High School", 350, "Oct. 24, 2022"),
new School("James Madison Academic Campus", 340, "Oct. 10, 2022"),
new School("Jeremiah E. Burke High School", 360, "Oct. 4, 2022"),
new School("Rudsdale High School", 270, "Sept. 28, 2022"),
new School("Mankato West High School", 1150, "Sept. 20, 2022"),
new School("Treasure Cost Classical Academy", 950, "Sept. 19, 2022"),
new School("Mergenthaler Vocational Technical High School", 890, "Sept. 2, 2022"),
new School("Madison Park Academy", 700, "Aug. 29, 2022"),
new School("Perry High School", 280, "Jan. 4, 2024"),
new School("NORTHEAST EARLY COLLEGE H S", 940, "Dec. 5, 2023"),
new School("KIPP Indy Legacy High", 280, "Nov. 3, 2023"),
new School("Carver Vocational-Technical High", 1020, "Oct. 27, 2023"),
new School("Edmondson Heights Elementary", 260, "Oct. 24, 2023"),
new School("St. Helena College and Career Academy", 250, "Sept. 12, 2023"),
new School("Josey High School", 640, "Aug. 16, 2023"),
new School("Michigan Collegiate High School", 320, "June 5, 2023"),
new School("Oliver Citywide Academy", 50, "May 24, 2023"),
new School("St. John's Prep", 1340, "May 22, 2023"),
new School("Roosevelt High School", 740, "May 17, 2023"),
new School("E. Washington Rhodes Elementary School", 370, "May 8, 2023"),
new School("Von Tobel Ed MS", 970, "May 8, 2023"),
new School("International Academy of Flint K12", 460, "May 2, 2023"),
new School("West High School", 1410, "April 28, 2023"),
new School("George Wythe High School", 1200, "April 27, 2023"),
new School("The Covenant School", 180, "March 27, 2023"),
new School("Northridge Middle School", 930, "March 24, 2023"),
new School("East High School", 2400, "March 22, 2023"),
new School("Anniston High School", 410, "March 22, 2023"),
new School("Lamar High School", 1270, "March 20, 2023"),
new School("Palo Duro High School", 1760, "March 6, 2023"),
new School("Westinghouse Academy", 630, "Feb. 14, 2023"),
new School("Dalhart ISD schools", 1610, "Feb. 13, 2023"),
new School("PS 78", 550, "Feb. 13, 2023")
  ];
  


  // list of Circle Circles
  let circlesList = [];
    let currentSchoolName = "";
  let currentSchoolDate = "";
  let currentSchoolStudents;
  let firstClick = false;
  

  function setup() {
    createCanvas(windowWidth, windowHeight);
  }
  
  function draw() {
    background(255);
    textSize(25);
    textAlign(LEFT, BOTTOM);
  
    // Display circles individually:
    for (let circle of circlesList) {
      fill(circle.circleColor);
      ellipse(circle.position.x, circle.position.y, 6, 6);
    }
  
    // Show infro and dots only after first clickk
if (firstClick) {
    const schoolNameWidth = textWidth(currentSchoolName) + 20;
    const studentsWidth = textWidth(`${currentSchoolStudents} students`) + 20;
    const dateWidth = textWidth(currentSchoolDate) + 20;
    
    // School:
    fill(255);
    noStroke();
    rect(0, height - 40, schoolNameWidth, 40);
    // Number of students:
    fill(255);
    noStroke();
    rect(width / 2 - studentsWidth / 2, height - 40, studentsWidth, 40);
    // Date:
    fill(255);
    noStroke();
    rect(width - dateWidth, height - 40, dateWidth, 40);
    
    //Black text:
    fill(0);
    // School name:
    text(currentSchoolName, 10, height - 10);
    // Number of studentss
    text(`${currentSchoolStudents} students`, width / 2 - textWidth(`${currentSchoolStudents} students`) / 2, height - 10);
    // Date:
    text(currentSchoolDate, width - dateWidth + 10, height - 10);
}
  }
  


//Mouse click functoins:
function mouseClicked() {
    
    if (!firstClick) {
        firstClick = true;
    }

    if (schools.length === 0) {
        console.log("No schools available to select.");
        return;
    }

    let clickedSchoolIndex = int(random(schools.length));
    let clickedSchool = schools[clickedSchoolIndex];

    if (clickedSchool && clickedSchool.students !== undefined) {
        // Update the current school name, date, and students count
        currentSchoolName = clickedSchool.name || "";
        currentSchoolDate = clickedSchool.date || "";
        currentSchoolStudents = clickedSchool.students;


        removeSchool(clickedSchoolIndex);

        let circleColor = color(random(255), random(255), random(255));
        noStroke();

        //Whole Frame:
        for (let i = 0; i < currentSchoolStudents; i++) {
            let randomX = random(width);
            let randomY = random(height);

            let circlePos = createVector(randomX, randomY);
            let newCircle = new Circle(circlePos, circleColor);
            circlesList.push(newCircle);
        }
    } else {
        console.log("Invalid school data or missing students property.");
    }
}

  
  // Removes school from the array, so no schools are repeated-
  function removeSchool(index) {
    if (index >= 0 && index < schools.length) {
      schools.splice(index, 1);
    }
  }


  function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
  }



  