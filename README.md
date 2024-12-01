
# Carwash Mobile app

  

### Figma Design

  

https://www.figma.com/design/W0S38qicrBfGCvF8gfoFYI/Green-car-final?node-id=0-1&node-type=canvas

  

---

  

# packages

  

we use for localization :

  

**Getx**

  

name : get

  

link : https://pub.dev/packages/get

  

---

  

for making native splash

  

**flutter_native_splash**

  

link : https://pub.dev/packages/flutter_native_splash

  

---

  

for state management we are using

  

**bloc**

  

link : https://pub.dev/packages/flutter_bloc

  

---

  

# notices :

  

## **please don't override anything from those**

  

## additions in assets :

  

### fonts :

  

name : **anton**

  

to access it :

  

- FontFamily.anton

  

name : **poppins**

  

to access it :

  

- FontFamily.poppins

  

### styles :

  

all styles in our features are added if you want to use it uses this pattern:

  

### k(Font_Color + opacity)+(Font_Size)+(Font_Family_name +Font if it is not the primary)+W(Font_Weight).

  

please ensure that the style doesn't exist exactly in **AppTextStyles**

  

### images :

  

images added today :

  

- assets/images/location_pin.png

- assets/images/edit_pin.png

- assets/images/check_arrow.png

- assets/images/edit_icon_black.svg

- assets/images/edit_icon.svg

- assets/images/location_icon_filled.svg

- assets/images/person.png

- assets/images/Reserve.svg

- assets/images/settings_icon.svg

- assets/images/Track_order.svg

  

to access it :

  

Assets.images.name

  

use it as svg

  

Assets.images.name.svg();

  

use it as image

  

Assets.images.name.image();

  

use it as image provider

  

Assets.images.name.provider();

  

to get its path

  

Assets.images.name.path;

  

### color :

  

all colors that has prefix "my" is changed and this prefix is removed

  

"mutedBlue" #242760

  

"darkBrown" #544C4C

"lightCyan" #E8F2F7

"Bluegray" #9197B3

"aliceBlue" #F7FDFF

"verylightgreen" #E3FFEA

"verylightblue" #F5F9FF

"lightGreyColor" #F8F8F8

  

- lightgreenishblue = #AADDB8

- white = #FFFFFF

- blue = #58AFC6

- bluelight = #99DCEE

- blacklight = #4D5257

  

don't touch anything and check first if your color exists in assets/colors/colors.xml

  

## localization

  

for localization to make it easier we can use chat gpt just pass the Arabic and tell him in the prompt to make maps of translations of the given texts and and put the result in (Map <String  ,String> en ) for English and (Map <String  ,String> ar ) for arabic make it summarized and simple , don't write in arabic in any key in the map and check first if the value you need exists in the two maps in class `Translations`

lib/core/localizations/translations.dart` .

  

# please don't edit anything written

  

if you want to make any edit in shared widgets in core folder extend it only (make additions only as you wish).

  

any class or color that has prefix "my" is now edited to its name without the prefix my

  

app_strings : for string constants

app_text_styles : for common text styles

app_utils.dart : have some helpers constants like height = h , width = w, isTablet condition to check if the current device is Tablet to ensure responsiveness of your design

  

ensure that :

.flutter-plugins-dependencies

.flutter-plugins
  

are added to .gitignore

---
added
Planslist was moved to core/widgets because it is shared between 3 features (packages, profile - home view) and it will depend on a list of plans model which exists in core/models/plan_model.dart and using expansion widget instead of column for list tile it is more easier to use instead of column if you want to continue on styling the content of expansion widget you would be appreciated for doing so.

---

# All the best wishes for you 👋

# IN AUTH INTERCEPTOR FILE
# deleted getToken() and getRefreshToke() methods and replace them with a _initializeTokens to wait tell the token load 
# because i causing an error with login screen , it did not wait till the token created