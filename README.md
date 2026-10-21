# GloBox A/B Test: Did a Food & Drink Banner Increase Conversions?

Course project (Masterschool, August 2023), written as an analyst report for a growth team.

## Business question
GloBox is an online marketplace (fashion, decor, and a growing food & drink category).
The growth team tested a banner on the mobile app's landing page to raise awareness of
food & drink. Did it increase the conversion rate or the average amount spent?

## Test setup
- Period: 25 Jan – 6 Feb 2023
- 48,943 users: 24,343 control, 24,600 treatment
- Conversion = the user made a purchase

## Results
| Metric | Control | Treatment | Result |
|---|---|---|---|
| Conversion rate | 3.923% | 4.630% | +18.0% relative, p = 0.0001 |
| Average spent | $3.37 | $3.39 | No significant difference, p = 0.9457 |

95% CI for the conversion difference: 0.35 to 1.07 percentage points. Even the low end
is above the 5% practical-significance threshold.

## Recommendation
Launch the banner. Conversion rose significantly and the banner is cheap to run. The test
found no evidence that average spend changed, so the revenue case rests on more buyers.

## Method
- SQL: joined users, activity and groups; built a converted flag and total spend per user
  (`globox_query.sql`)
- Two-proportion z-test, t-test, 95% confidence intervals
- Sample size and power calculation (10% relative MDE, 80% power)
- Google Sheets analysis and a Tableau Public dashboard: [link]

## Files
- `presentation.pdf`: 6-slide summary for leadership
- `Written_Report_Sundas_Andleeb.pdf`: full report
- `globox_query.sql`: SQL used to build the analysis table
