#define SHEET_MATERIAL_AMOUNT 2000
#define SHEET_UNIT "<small>cm<sup>3</sup></small>"

#define REAGENT_UNITS_PER_MATERIAL_UNIT (REAGENT_UNITS_PER_MATERIAL_SHEET / SHEET_MATERIAL_AMOUNT)
#define REAGENT_UNITS_PER_MATERIAL_SHEET 100 //touch this instead, sanity note, this is 100 (was 20)
#define REAGENT_UNITS_PER_GAS_MOLE 50 //and this, sanity note, this is 50 (was 10) all this should be obsolete once reagents and matter are united
#define MATERIAL_UNITS_TO_REAGENTS_UNITS(AMT) (AMT * REAGENT_UNITS_PER_MATERIAL_UNIT)

#define MATERIAL_WORTH_MULTIPLIER 0.05 //dont touch this shit please and the shit below too (the shit below is REALLY important)
#define REAGENT_WORTH_MULTIPLIER 1 / REAGENT_UNITS_PER_MATERIAL_SHEET * SHEET_MATERIAL_AMOUNT * MATERIAL_WORTH_MULTIPLIER
#define GAS_WORTH_MULTIPLIER 1 * REAGENT_UNITS_PER_GAS_MOLE * REAGENT_WORTH_MULTIPLIER

#define MATTER_AMOUNT_PRIMARY       SHEET_MATERIAL_AMOUNT
#define MATTER_AMOUNT_SECONDARY     (MATTER_AMOUNT_PRIMARY * 0.75)
#define MATTER_AMOUNT_REINFORCEMENT (MATTER_AMOUNT_PRIMARY * 0.5)
#define MATTER_AMOUNT_TRACE         (MATTER_AMOUNT_PRIMARY * 0.1)

#define HOLLOW_OBJECT_MATTER_MULTIPLIER 0.05
#define BASE_OBJECT_MATTER_MULTPLIER    0.25

#define GENERIC_SMELTING_HEAT_POINT 5000
#define HIGH_SMELTING_HEAT_POINT 10000
#define TECH_MATERIAL      "materials"
#define TECH_ENGINEERING   "engineering"
#define TECH_EXOTIC_MATTER "exoticmatter"
#define TECH_POWER         "powerstorage"
#define TECH_WORMHOLES     "wormholes"
#define TECH_BIO           "biotech"
#define TECH_COMBAT        "combat"
#define TECH_MAGNET        "magnets"
#define TECH_DATA          "programming"
#define TECH_ESOTERIC      "esoteric"
