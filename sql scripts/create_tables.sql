-- connect to database
\c health_analytics_db

-- create chronic_disease_indicators table
-- note: table needs to also have a primary key
CREATE TABLE chronic_disease_indicators (
    ID INT NOT NULL PRIMARY KEY,

    YearStart BIGINT,
    YearEnd BIGINT,
    
    -- CA, CO, CT, etc. 
    LocationAbbr CHAR,

    -- Caloifornia, Colorado, Arizona, etc. 
    LocationDesc CHAR,

    -- shorter than 255 chars
    DataSource CHAR,

    -- shorter than 255 chars
    Topic CHAR,

    -- longer than 255 chars
    Question TEXT,

    -- %, number, cases per 100000, $, etc.
    DataValueUnit CHAR,

    -- 'CrdPrev' 'LclCntrlAlc' 'AgeAdjPrev' 'Nmbr' 'Mean' 'AgeAdjMean' 'CrdRate'
    -- 'AgeAdjRate' 'USD' 'PerCapAlc' 'CommHstLiab' 'AvgAnnNmbr'
    -- 'AvgAnnAgeAdjRate' 'AvgAnnCrdRate' 'Prev' 'YesNo' 'CrdMean' 'Prct'
    -- 'Median'
    DataValueTypeID CHAR,

    --  'Crude Prevalence'
    --  'Local control of the regulation of alcohol outlet density'
    --  'Age-adjusted Prevalence' 'Number' 'Mean' 'Age-adjusted Mean'
    --  'Crude Rate' 'Age-adjusted Rate' 'US Dollars'
    --  'Per capita alcohol consumption'
    --  'Commercial host (dram shop) liability status for alcohol service'
    --  'Average Annual Number' 'Average Annual Age-adjusted Rate'
    --  'Average Annual Crude Rate' 'Prevalence' 'Yes/No' 'Crude Mean' 'Percent'
    --  'Median'
    DataValueType CHAR,

    -- nan '36.7' '31.4' ... '477.8' '0.45' '0.49'
    DataValue CHAR,

    -- nan 3.670e+01 3.140e+01 ... 4.778e+02 4.500e-01 4.900e-01
    DataValueAlt DECIMAL,

    -- '-' nan '^^^' '****' ' ' '*' '##' '~' '§§' '^^' '***' '~~~' '^^^^'
    -- '\x86\x86\x86' '#' '*, #' '§§§§'
    DataValueFootnoteSymbol CHAR,

    -- 'No data available' nan
    -- 'DC was not rated for this measure because the measure addresses state versus local authority and does not apply to the District of Columbia'
    -- 'Sample size of denominator and/or age group for age-standardization is less than 50 or relative standard error is more than 30%'
    -- ' ' '50 States + DC: US Median'
    -- ...
    -- 'No Data Available'
    DataValueFootnote CHAR,

    -- float
    LowConfidenceLimit DECIMAL,

    -- float
    HighConfidenceLimit DECIMAL,

    -- 'Overall' 'Gender' 'Race/Ethnicity'
    StratificationCategory1 CHAR,

    --  'Overall' 'Male' 'Female' 'White, non-Hispanic' 'Black, non-Hispanic'
    --  'Hispanic' 'Other, non-Hispanic' 'Multiracial, non-Hispanic'
    --  'Asian or Pacific Islander' 'American Indian or Alaska Native'
    Stratification1 CHAR,

    -- strings of '(37.63864012300047, -120.99999953799971)'
    Geolocation CHAR,

    -- 'ALC' 'AST' 'ART' 'CAN' 'CKD' 'COPD' 'CVD' 'DIA' 'TOB' 'DIS' 'IMM' 'MTH'
    -- 'NPAW' 'ORH' 'OLD' 'OVC' 'RPH'
    TopicID CHAR,

    -- similar to topic_id
    QuestionID CHAR,

    -- mix of ints and strings
    -- 6 8 9 11 10 12 13 66 15 19 16 17 18 20 21 22 25 24 23 26 27 29 28 30 37
    -- 38 31 33 34 35 32 36 39 40 41 42 72 44 45 46 47 48 59 49 51 78 50 53 55
    -- 54 56 2 1 5 4 '26' '27' '23' '29' '28' '30' '31' '37' '38' '48' '33' '34'
    -- '35' '39' '32' '36' '40' '49' '41' '51' '42' '72' '44' '45' '46' '47'
    -- '59' '78' '50' '12' '53' '55' '54' '02' '56' '01' '04' '05' '06' '08'
    -- '09' '10' '11' '20' '13' '66' '15' '19' '16' '17' '18' '21' '22' '25'
    -- '24' 'US'
    LocationID INT,

    -- 'OVERALL' 'GENDER' 'RACE'
    StratificationCategoryID1 CHAR,

    -- 'OVR' 'GENM' 'GENF' ... 'AIAN'
    StratificationID1 CHAR,
);