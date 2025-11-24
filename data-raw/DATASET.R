## code to prepare `DATASET` dataset goes here

usethis::use_data(DATASET, overwrite = TRUE)

library(ggplot2)
library(mosaic)
library(dplyr)
library(tidyverse)
library(usethis)

# Create a place for raw data
use_data_raw()

read_list <- function(raw_data) {
  # 1. Use read.delim() to read the text block.
  # This function treats the input string as a file connection, automatically handling
  # newlines (\n) as row separators and tabs/spaces as column separators.

  output_dataset <- read.delim(
    text = raw_data,
    header = TRUE,            # Use the first row as column names
    stringsAsFactors = FALSE, # Keep character columns as strings, not factors
    sep = "\t"                # Specify tab as the separator
  )
  return(output_dataset)
}


# Load and save datasets (example with built-in cars & iris) (1.2 and 1.3 dataset)
DungBeetles <- tribble(
  ~time,   ~treatment,
  34.2,    "clearcap",
  38.46,   "clearcap",
  58.13,   "clearcap",
  43.77,   "clearcap",
  16.17,   "clearcap",
  70.7,    "clearcap",
  37.23,   "clearcap",
  49.5,    "clearcap",
  36.86,   "clearcap",
  152.21,  "blackcap",
  123.61,  "blackcap",
  123.56,  "blackcap",
  114.29,  "blackcap",
  156.99,  "blackcap",
  84.18,   "blackcap",
  112.78,  "blackcap",
  131.54,  "blackcap",
  139.77,  "blackcap"
)

#next set:  (1.4 and 1.5)

Squirrels <- read_list("Location	Length
          Hemet	263
          Hemet	256
          Hemet	251
          Hemet	242
          Hemet	248
          BigBear	274
          BigBear	256
          BigBear	249
          BigBear	264
          Susanville	245
          Susanville	272
          Susanville	263
          Susanville	260
          Susanville	271
          Loophill	273
          Loophill	291
          Loophill	278
          Loophill	281")

#2.1

MeltingTimes <- read_list("student	time	chiptype
KH	133	chocolate
JvK	114	chocolate
HH	102	chocolate
LO	154	chocolate
SG	85	chocolate
CL	188	chocolate
LC	105	chocolate
EH	64	chocolate
JR	135	chocolate
BB	126	chocolate
LR	115	chocolate
MB	95	chocolate
JO	92	chocolate
MG	112	chocolate
IQ	142	chocolate
ML	172	chocolate
RUR	185	chocolate
EP	119	chocolate
NL	131	chocolate
TS	60	chocolate
KH2	108	chocolate
NN	192	chocolate
NH	120	chocolate
PS	95	chocolate
KJ	104	chocolate
KH3	90	chocolate
SS	192	chocolate
JS	162	chocolate
GA	120	chocolate
DC	91	chocolate
TA	94	chocolate
KH	94	butterscotch
JvK	112	butterscotch
HH	130	butterscotch
LO	129	butterscotch
SG	108	butterscotch
CL	179	butterscotch
LC	91	butterscotch
EH	65	butterscotch
JR	132	butterscotch
BB	105	butterscotch
LR	100	butterscotch
MB	81	butterscotch
JO	72	butterscotch
MG	95	butterscotch
IQ	170	butterscotch
ML	195	butterscotch
RUR	187	butterscotch
EP	102	butterscotch
NL	110	butterscotch
TS	50	butterscotch
KH2	89	butterscotch
NN	178	butterscotch
NH	82	butterscotch
PS	83	butterscotch
KJ	91	butterscotch
KH3	57	butterscotch
SS	148	butterscotch
JS	101	butterscotch
GA	77	butterscotch
DC	68	butterscotch
TA	79	butterscotch")


#Strawberries 2.2

Strawberries <- read_list("Firmness	Storage	Variety
6.7	Air	Allstar
4	Air	Bounty
6.3	Air	Kent
7.9	Air	Selva
3.2	Air	Vesper
9.5	ModifiedAir	Allstar
5	ModifiedAir	Bounty
7.3	ModifiedAir	Kent
11.5	ModifiedAir	Selva")


#2.3

carmpg <- read_list("weight	horsepower	acceleration
heavy	high	12
heavy	high	11.5
heavy	high	11
heavy	high	12
heavy	high	10.5
heavy	high	10
heavy	high	9
heavy	high	8.5
heavy	high	10
heavy	high	8.5
heavy	high	10
heavy	high	8
heavy	high	9.5
heavy	high	10
light	low	15
heavy	low	15.5
light	low	15.5
light	low	16
light	low	14.5
light	low	20.5
light	low	17.5
light	low	14.5
light	low	17.5
light	high	12.5
light	low	15
heavy	high	14
heavy	high	15
heavy	high	13.5
heavy	high	18.5
light	low	14.5
light	low	15.5
light	low	14
light	high	13
heavy	high	15.5
heavy	high	15.5
heavy	low	15.5
heavy	high	15.5
heavy	high	12
heavy	high	11.5
heavy	high	13.5
heavy	high	13
heavy	high	11.5
heavy	high	12
heavy	high	12
heavy	high	13.5
light	low	19
heavy	high	15
heavy	low	14.5
light	low	14
light	low	14
light	low	19.5
light	low	14.5
light	low	19
light	low	18
light	low	19
light	low	20.5
light	low	15.5
light	low	17
light	low	23.5
light	low	19.5
light	low	16.5
heavy	high	12
heavy	high	12
heavy	high	13.5
heavy	high	13
heavy	high	11.5
heavy	high	11
heavy	high	13.5
heavy	high	13.5
heavy	high	12.5
light	low	13.5
heavy	high	12.5
heavy	high	14
heavy	high	16
heavy	high	14
heavy	high	14.5
light	low	18
heavy	low	19.5
light	low	18
light	low	16
light	low	17
light	low	14.5
light	low	15
light	low	16.5
heavy	high	13
heavy	high	11.5
heavy	high	13
heavy	high	14.5
heavy	high	12.5
heavy	high	11.5
heavy	high	12
heavy	high	13
heavy	high	14.5
heavy	high	11
heavy	high	11
heavy	high	11
heavy	high	16.5
heavy	high	18
heavy	high	16
heavy	low	16.5
heavy	low	16
light	low	21
heavy	high	14
heavy	high	12.5
heavy	high	13
heavy	high	12.5
light	high	15
light	low	19
light	low	19.5
light	low	16.5
light	low	13.5
light	low	18.5
light	high	14
light	low	15.5
heavy	high	13
heavy	high	9.5
light	low	19.5
light	low	15.5
light	low	14
heavy	high	15.5
heavy	high	11
light	high	14
heavy	high	13.5
heavy	high	11
heavy	low	16.5
heavy	high	16
heavy	high	17
light	low	19
light	low	16.5
light	low	21
light	low	17
heavy	high	17
heavy	high	18
heavy	high	16.5
heavy	high	14
heavy	high	14.5
heavy	high	13.5
heavy	high	16
heavy	high	15.5
light	low	16.5
light	low	15.5
light	low	14.5
light	low	16.5
light	low	19
light	low	14.5
light	low	15.5
light	low	14
light	low	15
light	low	15.5
light	low	16
heavy	low	16
heavy	high	16
heavy	low	21
heavy	low	19.5
heavy	high	11.5
heavy	high	14
heavy	high	14.5
heavy	high	13.5
heavy	high	21
heavy	high	18.5
heavy	high	19
heavy	low	19
heavy	high	15
heavy	high	13.5
heavy	high	12
light	low	16
light	low	17
heavy	high	16
light	low	18.5
light	low	13.5
light	low	16.5
light	low	17
heavy	low	14.5
light	low	14
heavy	low	17
light	low	15
heavy	low	17
heavy	low	14.5
light	high	13.5
light	low	17.5
light	low	15.5
light	low	16.9
light	low	14.9
light	low	17.7
light	low	15.3
heavy	high	13
heavy	high	13
heavy	high	13.9
heavy	high	12.8
heavy	high	15.4
heavy	high	14.5
heavy	low	17.6
heavy	low	17.6
light	low	22.2
light	low	22.1
light	low	14.2
light	low	17.4
heavy	high	17.7
heavy	low	21
heavy	high	16.2
heavy	low	17.8
light	low	12.2
light	low	17
light	low	16.4
light	low	13.6
heavy	high	15.7
heavy	high	13.2
heavy	low	21.9
heavy	high	15.5
heavy	high	16.7
heavy	high	12.1
heavy	high	12
heavy	high	15
heavy	high	14
light	low	18.5
light	low	14.8
light	low	18.6
light	low	15.5
light	low	16.8
heavy	high	12.5
heavy	high	19
heavy	high	13.7
heavy	high	14.9
heavy	high	16.4
heavy	high	16.9
heavy	high	17.7
heavy	low	19
heavy	high	11.1
heavy	high	11.4
heavy	high	12.2
heavy	high	14.5
light	low	14.5
light	low	16
light	low	18.2
light	low	15.8
light	low	17
light	low	15.9
light	low	16.4
light	low	14.1
heavy	low	14.5
light	high	12.8
light	high	13.5
light	low	21.5
light	low	14.4
light	low	19.4
light	low	18.6
light	low	16.4
heavy	high	15.5
heavy	high	13.2
heavy	high	12.8
heavy	high	19.2
heavy	low	18.2
heavy	low	15.8
light	low	15.4
heavy	high	17.2
heavy	low	17.2
heavy	high	15.8
heavy	low	16.7
heavy	high	18.7
heavy	high	15.1
heavy	high	13.2
heavy	high	13.4
heavy	high	11.2
heavy	high	13.7
light	low	16.5
light	low	14.2
light	low	14.7
light	low	14.5
light	low	14.8
light	high	16.7
heavy	low	17.6
light	low	14.9
heavy	high	15.9
heavy	high	13.6
light	high	15.7
heavy	high	15.8
light	low	14.9
light	low	16.6
heavy	high	15.4
heavy	low	18.2
heavy	low	17.3
heavy	low	18.2
heavy	high	16.6
heavy	high	15.4
heavy	high	13.4
heavy	high	13.2
heavy	high	15.2
heavy	high	14.9
heavy	high	14.3
heavy	high	15
heavy	high	13
light	low	14
light	low	15.2
light	low	14.4
light	low	15
heavy	low	20.1
heavy	high	17.4
heavy	low	24.8
heavy	low	22.2
light	low	13.2
light	low	14.9
light	low	19.2
light	low	14.7
light	low	16
light	high	11.3
light	high	12.9
light	low	13.2
light	low	14.7
light	low	18.8
light	low	15.5
light	low	16.4
light	low	16.5
heavy	low	18.1
heavy	low	20.1
heavy	low	18.7
light	low	15.8
light	low	15.5
light	low	17.5
light	low	15
light	low	15.2
light	low	17.9
light	high	14.4
light	low	19.2
light	low	21.7
light	low	23.7
heavy	low	19.9
heavy	low	21.8
light	low	13.8
light	low	18
light	low	15.3
heavy	high	11.4
light	high	12.5
light	low	15.1
light	low	17
light	low	15.7
light	low	16.4
light	low	14.4
light	high	12.6
light	low	12.9
light	low	16.9
light	low	16.4
light	low	16.1
light	low	17.8
light	low	19.4
light	low	17.3
light	low	16
light	low	14.9
light	low	16.2
light	low	20.7
light	low	14.2
light	low	14.4
light	low	16.8
light	high	14.8
light	low	18.3
heavy	low	20.4
heavy	low	19.6
heavy	high	12.6
heavy	high	13.8
heavy	high	15.8
heavy	high	19
heavy	low	17.1
heavy	low	16.6
light	low	19.6
light	low	18.6
light	low	18
light	low	16.2
light	low	16
light	low	18
heavy	low	16.4
light	low	15.3
light	low	18.2
light	low	17.6
light	low	14.7
light	low	17.3
light	low	14.5
light	low	14.5
light	low	16.9
light	low	15
light	low	15.7
light	low	16.2
heavy	high	16.4
heavy	low	17
light	low	14.5
heavy	high	14.7
light	low	13.9
light	low	13
heavy	low	17.3
light	low	15.6
light	low	24.6
light	low	11.6
light	low	18.6
light	low	19.4")








# Section 3.1,

piggrowth <- read_list("Antibiotic	VitaminB12	Growth	Treatment
Yes	Yes	1.52	Yes_Yes
Yes	Yes	1.7	Yes_Yes
Yes	Yes	1.54	Yes_Yes
Yes	No	1.25	Yes_No
Yes	No	1.1	Yes_No
Yes	No	1.24	Yes_No
No	Yes	1.4	No_Yes
No	Yes	1.5	No_Yes
No	Yes	1.3	No_Yes
No	No	1.1	No_No
No	No	0.89	No_No
No	No	0.88	No_No")







#Section 3.2:

ad_data <- read_list("rating	claim	imagery
0	Concrete	Visual
5	Concrete	Visual
4	Concrete	Visual
3	Concrete	Visual
6	Concrete	Visual
8	Concrete	Visual
5	Concrete	Visual
6	Concrete	Visual
5	Concrete	Visual
8	Concrete	Visual
5	Concrete	Visual
4	Concrete	Visual
5	Concrete	Visual
8	Concrete	Visual
5	Concrete	Visual
6	Concrete	Visual
6	Concrete	Visual
7	Concrete	Visual
6	Concrete	Visual
6	Concrete	Visual
10	Concrete	Visual
4	Concrete	Visual
1	Concrete	Verbal
5	Concrete	Verbal
4	Concrete	Verbal
2	Concrete	Verbal
4	Concrete	Verbal
3	Concrete	Verbal
4	Concrete	Verbal
1	Concrete	Verbal
3	Concrete	Verbal
3	Concrete	Verbal
1	Concrete	Verbal
4	Concrete	Verbal
3	Concrete	Verbal
2	Concrete	Verbal
3	Concrete	Verbal
2	Concrete	Verbal
3	Concrete	Verbal
2	Concrete	Verbal
4	Concrete	Verbal
6	Concrete	Verbal
4	Concrete	Verbal
1	Concrete	Verbal
-1	Abstract	Visual
2	Abstract	Visual
3	Abstract	Visual
1	Abstract	Visual
4	Abstract	Visual
6	Abstract	Visual
1	Abstract	Visual
3	Abstract	Visual
4	Abstract	Visual
5	Abstract	Visual
4	Abstract	Visual
4	Abstract	Visual
2	Abstract	Visual
3	Abstract	Visual
2	Abstract	Visual
4	Abstract	Visual
2	Abstract	Visual
2	Abstract	Visual
4	Abstract	Visual
1	Abstract	Visual
5	Abstract	Visual
3	Abstract	Visual
3	Abstract	Verbal
4	Abstract	Verbal
4	Abstract	Verbal
4	Abstract	Verbal
2	Abstract	Verbal
0	Abstract	Verbal
3	Abstract	Verbal
-1	Abstract	Verbal
2	Abstract	Verbal
1	Abstract	Verbal
2	Abstract	Verbal
6	Abstract	Verbal
2	Abstract	Verbal
2	Abstract	Verbal
4	Abstract	Verbal
1	Abstract	Verbal
5	Abstract	Verbal
-2	Abstract	Verbal
5	Abstract	Verbal
2	Abstract	Verbal
6	Abstract	Verbal
3	Abstract	Verbal")



#3.3

hurricanesA <- read_list("Rating	HurrGender	Participant
3.5	male	1
4	female	1
4	male	1
4.5	female	1
7	female	1
4	male	1
1	male	1
6	female	1
6	female	1
3	male	1
6	male	346
2	female	346
5.5	male	346
4.5	female	346
1	female	346
6	male	346
6	male	346
4.5	female	346
4	female	346
5	male	346")


#3.4

Hopelessness <- read_list("hopelessness8	Exercise	BaselineGroup
1.666666667	exerciser	mod_severeHopeless
1	non-exerciser	mod_severeHopeless
1.166666667	exerciser	mod_severeHopeless
2	exerciser	mod_severeHopeless
1.166666667	exerciser	mod_severeHopeless
2.5	non-exerciser	mod_severeHopeless
2	exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
3.333333333	non-exerciser	mod_severeHopeless
1.166666667	exerciser	mod_severeHopeless
1.166666667	exerciser	mod_severeHopeless
2.166666667	exerciser	mod_severeHopeless
1.333333333	exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
1	exerciser	mod_severeHopeless
2.166666667	non-exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
2	exerciser	mod_severeHopeless
3	non-exerciser	mod_severeHopeless
2	exerciser	mod_severeHopeless
1.5	exerciser	mod_severeHopeless
1.166666667	exerciser	mod_severeHopeless
2.833333333	non-exerciser	mod_severeHopeless
2.833333333	non-exerciser	mod_severeHopeless
2.166666667	exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
1.833333333	exerciser	mod_severeHopeless
2.333333333	non-exerciser	mod_severeHopeless
1.833333333	non-exerciser	mod_severeHopeless
1.833333333	exerciser	mod_severeHopeless
2	exerciser	mod_severeHopeless
1.5	exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
1.833333333	exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
1.5	exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
2.166666667	non-exerciser	mod_severeHopeless
3	non-exerciser	mod_severeHopeless
1.5	non-exerciser	mod_severeHopeless
2.333333333	non-exerciser	mod_severeHopeless
2	exerciser	mod_severeHopeless
2.333333333	non-exerciser	mod_severeHopeless
2	exerciser	mod_severeHopeless
1.812356315	exerciser	mod_severeHopeless
2.333333333	non-exerciser	mod_severeHopeless
2.666666667	non-exerciser	mod_severeHopeless
2.5	non-exerciser	mod_severeHopeless
1	non-exerciser	mod_severeHopeless
1	exerciser	mod_severeHopeless
1.5	exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
1.666666667	non-exerciser	mod_severeHopeless
2.833333333	exerciser	mod_severeHopeless
1	non-exerciser	mod_severeHopeless
1	exerciser	mod_severeHopeless
2.166666667	exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
2	exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
2.761537445	non-exerciser	mod_severeHopeless
1	exerciser	mod_severeHopeless
2.5	non-exerciser	mod_severeHopeless
1.666666667	exerciser	mod_severeHopeless
1.666666667	non-exerciser	mod_severeHopeless
1.333333333	non-exerciser	mod_severeHopeless
1.833333333	non-exerciser	mod_severeHopeless
1	exerciser	mod_severeHopeless
2	exerciser	mod_severeHopeless
1.166666667	non-exerciser	mod_severeHopeless
1.333333333	exerciser	mod_severeHopeless
1.666666667	exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
1.666666667	non-exerciser	mod_severeHopeless
3	non-exerciser	mod_severeHopeless
1	exerciser	mod_severeHopeless
2	non-exerciser	mod_severeHopeless
3.166666667	non-exerciser	mod_severeHopeless
1.833333333	exerciser	mod_severeHopeless
1.666666667	exerciser	mod_severeHopeless
1	exerciser	mod_severeHopeless
1.5	exerciser	mod_severeHopeless
2.166666667	exerciser	mod_severeHopeless
2.166666667	exerciser	mod_severeHopeless
1.5	non-exerciser	mod_severeHopeless
1	exerciser	mod_severeHopeless
1.666666667	exerciser	notHopeless
2.833333333	non-exerciser	notHopeless
1.166666667	exerciser	notHopeless
1	non-exerciser	notHopeless
1	non-exerciser	notHopeless
1.666666667	exerciser	notHopeless
1	non-exerciser	notHopeless
1.166666667	non-exerciser	notHopeless
1	exerciser	notHopeless
1.166666667	exerciser	notHopeless
1	exerciser	notHopeless
1.833333333	exerciser	notHopeless
1.166666667	non-exerciser	notHopeless
1.833333333	non-exerciser	notHopeless
1	non-exerciser	notHopeless
1.166666667	exerciser	notHopeless
1.166666667	exerciser	notHopeless
1.27570154	non-exerciser	notHopeless
1.166666667	exerciser	notHopeless
1.166666667	non-exerciser	notHopeless
1.166666667	exerciser	notHopeless
1	non-exerciser	notHopeless
2	exerciser	notHopeless
2	non-exerciser	notHopeless
2	non-exerciser	notHopeless
1	exerciser	notHopeless
1	exerciser	notHopeless
1	exerciser	notHopeless
1	exerciser	notHopeless
2.166666667	exerciser	notHopeless
2.166666667	non-exerciser	notHopeless
2	exerciser	notHopeless
1	non-exerciser	notHopeless
2	exerciser	notHopeless
1.166666667	non-exerciser	notHopeless
2	non-exerciser	notHopeless
2.5	exerciser	notHopeless
1.333333333	non-exerciser	notHopeless
1.166666667	exerciser	notHopeless
1.166666667	exerciser	notHopeless
1	non-exerciser	notHopeless
1.166666667	non-exerciser	notHopeless
1.833333333	exerciser	notHopeless
1.333333333	non-exerciser	notHopeless
1.5	exerciser	notHopeless
1.166666667	non-exerciser	notHopeless
1.5	exerciser	notHopeless
1.333333333	non-exerciser	notHopeless
2	exerciser	notHopeless
1.5	non-exerciser	notHopeless
1	non-exerciser	notHopeless
1.166666667	exerciser	notHopeless
1.166666667	exerciser	notHopeless
1.166666667	non-exerciser	notHopeless
1.166666667	exerciser	notHopeless
1.166666667	non-exerciser	notHopeless
2	exerciser	notHopeless
1.5	exerciser	notHopeless
1.833333333	non-exerciser	notHopeless
2	exerciser	notHopeless
1.5	exerciser	notHopeless
1	non-exerciser	notHopeless
1.333333333	non-exerciser	notHopeless
1	exerciser	notHopeless
1	exerciser	notHopeless
1.5	non-exerciser	notHopeless
1.5	non-exerciser	notHopeless
1.5	exerciser	notHopeless
1.833333333	non-exerciser	notHopeless
2.833333333	exerciser	notHopeless
1.166666667	exerciser	notHopeless
1	non-exerciser	notHopeless
2	exerciser	notHopeless
1	non-exerciser	notHopeless
2.166666667	non-exerciser	notHopeless
1.333333333	exerciser	notHopeless
1.166666667	exerciser	notHopeless
2	non-exerciser	notHopeless
1.166666667	non-exerciser	notHopeless
1.333333333	exerciser	notHopeless
2	exerciser	notHopeless
1.833333333	non-exerciser	notHopeless
1	exerciser	notHopeless
1.5	non-exerciser	notHopeless
1.166666667	exerciser	notHopeless
1.166666667	exerciser	notHopeless
2	exerciser	notHopeless")













