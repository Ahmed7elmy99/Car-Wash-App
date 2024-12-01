// ignore_for_file: equal_keys_in_map

import 'package:get/get.dart';

/*
edited by : Mohamed Waleed
edited at : 14/10/2024
edits :
- , was added at line 125
- "sar.hour": "sar.hour", was removed at 128 becuase it already exists and was making error becuase of messing ,
- all duplicates keys are removed with the help of chat GPT
- keys added : month , proposed_plan , active , order_15_times_per_month, choose_plan, 24_7_support keys added,choose_appropriate_plan,monthly,select_plan ,  inactive , premium_plan , fast_access

 */
class AppTranslations extends Translations {
  // English translations
  final Map<String, String> en = {
    'language': 'Language',
    'app': 'App ',
    'search_title': 'Search',
    'my_address': 'My Addresses', //Ghaith ----(4/11/2024)
    'search_result': 'Search Results',
    'choose_language':
        'Please select the appropriate application language for you',
    'enter_phone':
        'Please enter the registered phone number to start the application.',
    'password': 'Password',
    'sign_in': 'Sign In',
    'confirm': 'Confirm',
    'no_account': "Don't have an account yet?",
    'create_account': 'Create New Account',
    'phone_number': 'Phone Number',
    'enter_phone_instruction': 'Please enter your phone number',
    'enter_code': 'Enter Code',
    'enter_code_instruction':
        'Please enter the verification code sent to your number',
    'resend_code': 'Didn’t receive the code yet?',
    'resend': 'Resend',
    'confirm_continue': 'Confirm and Continue',
    'create_new_account': 'Create a New Account',
    'complete_your_info': 'Please complete your information to start the app',
    'full_name': 'Full Name',
    'email': 'Email',
    'phone': 'Phone',
    'confirm_password': 'Confirm Password',
    'agree_terms': 'Agree to Terms and Conditions',
    'already_have_account': 'Already have an account? Login',
    'terms_conditions': 'Terms and Conditions',
    'green_car_description_1':
        'We can reach your location easily. Just enter your location and we will serve you as soon as possible.',
    'green_car_description_2':
        'There are a variety of available options, and our service provides simplicity in choosing.',
    'green_car_description_3':
        'This service is available for all users of the Green Car app.',
    'green_car_description_4':
        'We always strive to offer the best service to our valued customers.',
    'wash': 'wash',
    'back': 'back',
    'next': 'next',
    'choose_payment_method': 'choose payment method',
    'pay_on_arrival': 'Pay on Arrival',
    'pay_on_arrival_description':
        'Payment can be made to the service team upon arrival at your location.',
    'bank_payment': 'Bank Payment',
    'bank_payment_description':
        'We offer different online payment methods suitable for you.',
    'credit_debit_card': 'Credit/Debit Card',
    'cardholder_name': 'Cardholder Name',
    'card_number': 'Card Number',
    'refund_note':
        'Note: Refunds can be requested after placing the service request.',
    'bank_transfer': 'Bank Transfer',
    'confirm_payment': 'Confirm Payment',
    'Onboard_suptitel_1':
        'We can reach your location easily, just enter your location and we will provide you with our service as soon as possible',
    'Onboard_titel_1': 'We can reach your location easily',
    'Onboard_titel_2': 'special car services',
    'Onboard_titel_3': 'full car wash',
    'your_location': 'your location',
    'start_app': 'start app',
    'Reservation': 'Reservation',
    'Reserve': 'Reserve',
    'canceled': 'canceled',
    'edit': 'edit',
    'conformed': 'confirmed',
    'location': 'Location',
    'search_about_service': 'Search about a service',
    'offers': 'Offers',
    'order_now': 'Order Now',
    'rial': 'Rial',
    '/hour': '/Hour',
    'fast_service': 'Fast Services',
    'services': 'Services',
    'add_to_cart': 'Add to cart',
    'planes': 'Planes',
    'rial_monthly': 'Rial Monthly',
    'choose_a_plane': 'choose a plane',
    'user_profile': 'Profile',
    'cart': 'Cart',
    'reservations': 'Reservations',
    'call_us': 'Call Us',
    'my_data': 'My Data',
    'my_reservations': 'My Reservations',
    'packages': 'Packages',
    'edit_data': 'Edit Data',
    'save': 'Save',
    'track_order': 'track order',
    'service_addrise': 'service address',
    'sar.hour': 'sar.hour',
    "track_order": "track order",
    "service_addrise": "service addrise",
    "sar.hour": "sar.hour",
    "location": "Location",
    "search_about_service": "Search about a service",
    "offers": "Offers",
    "order_now": "Order Now",
    "rial": "Rial",
    "/hour": "/Hour",
    "fast_service": "Fast Services",
    "services": "Services",
    "add_to_cart": "Add to cart",
    "planes": "Planes",
    "rial_monthly": "Rial Monthly",
    "choose_a_plane": "choose a plane",
    "user_profile": "Profile",
    "cart": "Cart",
    "reservations": "Reservations",
    "call_us": "Call Us",
    'service_title': 'Service Title',
    // start: edited by helmy (14/10/2024)
    'service_price': ' Riyals Hour',
    // end: edited by helmy (14/10/2024)
    'time': 'Time',
    'date': '17 Aug, Thu',
    'address': 'Address',
    'details': 'Details',
    'car_details': 'Car Details',
    // start: removed by helmy (14/10/2024)
    /* 'car_model': 'Kia Sportage',
    'car_color': 'Color - Blue',
    'car_number': 'Car Number: K1544128',*/
    // end: removed by helmy (14/10/2024)
    'payment_details': 'Payment Details',
    'discount': 'Discount',
    'total_amount': 'Total Amount',
    'continue_payment': 'Continue to Payment',
    'normal_wash_service': 'Normal Wash Service',
    'additional_value': 'Additional Value', // Added key
    'service_value': 'Service Value',
    'edit': ' Edit',
    'promo_code_number': 'Promo Code Number',
    'apply': 'Apply',
    'price_with_currency': '1,3.87 Riyals',
    'price_with_currency2': '2.87 Riyals',
    'proposed_plan': 'Proposed Plan',
    "active": "active",
    "month": "month",
    'order_15_times_per_month': 'Ability to order 15 times per month',
    '24_7_support': '24/7 technical support',
    'choose_plan': 'Choose Plan',
    'choose_appropriate_plan': 'Please select the appropriate plan',
    'monthly': 'Monthly',
    'select_plan': 'Select Plan',
    'expiry_date': 'Expiry Date',
    'inactive': 'Inactive',
    'premium_plan': 'Premium Plan',
    'fast_access': 'Fast Access',
    'renew_package': 'Renew Package',
    'change_plan': 'Change Plan',
    'plan': 'Plan',
    'type_of_reservation': 'Reservation type',
    // Edited by: Nadeen Mohamed
    // Edited at date: 9/11/2024
    // Edite note: Change the reservation types to Inside and Outside
    'internal_reservation': 'Inside',
    'external_reservation': 'Outside',
    'choose_date': 'Choose Date',
    'home_address': 'Home Address',
    'home_address2': 'Home Address 2',
    'work_address': '"Work Address',
    // Edited by: nadeen mohamed
    // Edited at date: 15/10/2024
    // add primary address instead of mother's address
    'primary_address': 'Primary address',
    // end
    'neighborhood': 'Neighborhood',
    'street': 'Street',
    'city': 'City',
    'choose_time': 'Choose Time',
    'additional_products': 'Additional Products',
    'air_freshener': 'Air Freshener',
    'tissues': 'Tissues',
    'add_notes': 'Add Notes',
    'confirm_booking': 'Confirm Booking',
    'service_data_prompt': 'Please enter the required service details',
    'confirm_date': 'Confirm the date',
    'service_provider':
        'Service Provider', // added by Naira ---13/10/2023--- for track order feature
    'back_to_reservations':
        'Back To Reservations', // added by Naira ---13/10/2023--- for track order feature
    //start: created by helmy (14/10/2024)
    'car_model': 'kia Sportage',
    "car": 'Car',
    'car_color': ' Color',
    'blue': '-  Blue',
    'car_number': 'Car Number',
    "K1544128": "K1544128",
    "carNumber": "Car Number",
    "carType": "Car Type",
    "carColor": "Car Color",
    "confirmDetails": "Confirm Details", //end: created by helmy (14/10/2024)
    "notifications": "Notifications",
    "track_order_now": "You can track your order now",
    "car_wash_service":
        "Wash your car and clean it, we come to you no matter where you are",
    "request_services_now": "You can request your services now",
    //added by waleed (16/10/2024)
    "current_plan": "Current plan",
    //Ghaith ----(16/10/2024)
    'set_address_as_default': 'Set address as default',
    //start: created by helmy (19/10/2024)
    'Create a new account': 'Create a new account',
    'Please complete your information to start the app':
        'Please complete your information to start the app',
    'Full Name': 'Full Name',
    'Email': 'Email',
    'Phone Number': 'Phone Number',
    'Password': 'Password',
    'Confirm Password': 'Confirm Password',
    'Agree to': 'Agree to',
    'Terms and Conditions': 'Terms and Conditions',
    'Create Account': 'Create Account',
    'Already have an account?': 'Already have an account?',
    'Sign In': 'Sign In',
    "Phone": "Phone",
    "We can reach your location easily, just enter your place and we will deliver our service to you as quickly as possible":
        "We can reach your location easily, just enter your place and we will deliver our service to you as quickly as possible",
    "There are many types of Lorem Ipsum texts available, but the majority have been altered in some way by inserting some rarities or random words into the text":
        "There are many types of Lorem Ipsum texts available, but the majority have been altered in some way by inserting some rarities or random words into the text",
    "If you want to use a Lorem Ipsum text, you should first make sure that there are no embarrassing or inappropriate words or phrases hidden in the text.":
        "If you want to use a Lorem Ipsum text, you should first make sure that there are no embarrassing or inappropriate words or phrases hidden in the text.",
    "While all online Lorem Ipsum text generators repeat sections of the same Lorem Ipsum text multiple times as needed.":
        "While all online Lorem Ipsum text generators repeat sections of the same Lorem Ipsum text multiple times as needed.",
    "Terms": "Terms",
    "And Conditions": "And Conditions",
    // added by Waleed (19/10/2024)
    'no_country_found': 'No country found',
    'offer': 'Offer',
    'national_day': 'National Day',
    'exterior_wash': 'Exterior Wash',
    'interior_wash': 'Interior Wash',
    'vip_wash': 'VIP Wash',
    'full_wash': 'Full Wash',
    'discount_on_standard_car_wash': 'Discount on standard car wash',
    'vip_plan': 'VIP Plan',
    'diamond_plan': 'Diamond Plan',
    // end added by Waleed (19/10/2024)
    //Start added by Ghaith (19/10/2024)
    'add_address': 'Add Address',
    //end added by Ghaith (19/10/2024)
    // Start by: Nadeen Mohamed
    // Start at date: 20/10/2024
    // Add more translation in en
    'cart': 'Cart',
    'cart_contents': 'Cart Contents',
    'continue': 'Continue',
    'no_services_in_cart': 'No Services in Cart',
    //edited by omnia [26/11/2024]
    'add_item': 'Add Item',
    'congratulations_text':
        'Congratulations...Operation Completed Successfully',
    'payment_completed':
        'Congratulations, Payment and Order Completed Successfully',
    'back_to_home': 'Back to Home',
    // End by: nadeen mohamed at (20/10/2024)
    'landline_phone': 'LandLine Phone',
    'send_a_message': 'Send Message',
    'type_a_message': 'Type your message',
    'send': 'Send',
    'setting': 'Setting',
    'user_name': 'Saad Marzook',
    'language': 'Language',
    'allow_notifications': 'Allow Notifications',
    'my_profile': 'Profile',
    'service_instructions': 'Service Instructions',
    'log_out': 'Logout',
    //Start Ghaith(21/10/2024)
    'city': 'city',
    'address_name': 'ِAddress Name',
    'area': 'Area',
    'neighborhood': 'Neighborhood',
    'street': 'Street',
    'confirm_address': 'Confirm Address',
    'home_address': 'Home Address',
    'work_address': 'Work Address',
    'name_of_the_street_or_neighborhood': 'Name of the street or neighborhood',
    'add_new_address': 'Add New Address',
    //End Ghaith(21/10/2024)
    //start Amr Elnbawy 22/10/2024
    'create_account1': 'Create New Account',
    //end Amr Elnbawy 22/10/2024

    //added by waleed (23/10/2024)
    'Enter_password': 'Please enter a password',
    'Password_must_be_8_chars': 'Password must be at least 8 characters long',
    'Uppercase_required': 'Password must contain at least one uppercase letter',
    'Lowercase_required': 'Password must contain at least one lowercase letter',
    'Number_required': 'Password must contain at least one number',
    'Special_char_required':
        r'Password must contain at least one special character (!@#\$&*~)',
    'Enter_email': 'Please enter an email',
    'Valid_email_required': 'Please enter a valid email address',
    'Enter_name': 'Please enter a name',
    'Valid_name_required': 'Please enter a valid name',
    'Name_must_be_2_chars': 'Name must be at least 2 characters long',
    'Field_required': 'This field can\'t be empty',
    'Valid_phone_required': 'Please enter a valid phone number',
    "field_can't_be_empty": "This field can't be empty",

    //added by waleed (26/10/2024)
    "error": "Error",
    "unknown_error_occured": 'An unknown error occurred.',
    'edit_address': 'Edit Address',
    //end added by waleed
    //added by amr elnbawy at(28/10/2024)
    "pennding": "pennding",
    "cancel": "cancel",
    //end added by amr

    //added by helmy at(30/10/2024)
    "Check that password and confirmed password are the same.":
        "Check that password and confirmed password are the same.",
    "Please select a profile image.": "Please select a profile image.",
    "You must accept the terms and conditions":
        "You must accept the terms and conditions",
    "Error!!": "Error!!",
    //end added by helmy
    //added by Ghaith (1/11/2024)
    'address_update_successfully': 'Address updated successfully',
    'success': 'Success',
    'Continue': 'متابعه',
    'address_added_successfully': 'Address added successfully',
    //end added by Ghaith (1/11/2024)
    //added by Waleed (1/11/2024)
    'forget_password': "Forgot password?",
    'reset_password': "Reset password",
    //end added by Waleed (1/11/2024)
    //end added by Ghaith (30/10/2024)
    //added by omnia mohamed(3/11/2024)
    //added by Waleed (4/11/2024)
    "additional_product": "Additional product",
    'yearly': 'Yearly',
    'half_yearly': 'Half Yearly',
    'monthly': 'Monthly',
    'weekly': 'Weekly',
    'daily': 'Daily',
    //end added by Waleed (4/11/2024)
    //added by helmy at(4/11/2024)
    'please enter promo code': "please enter promo code",
    //end added by helmy
    'products': 'Products',

    //end added by Waleed (5/11/2024)
    'enter_phone_reset_password':
        'Please enter the registered phone number to reset your password.',
    //end added by Waleed (5/11/2024)

    //added by Helmy (6/11/2024)
    "please select car color": "please select car color",
    "please select car number": "please select car number",
    "please select car type": "please select car type",
    //end added by Helmy (6/11/2024)
    //end added by Waleed (6/11/2024)
    'reset_password_code_send_success': "Reset password code sent successfully",
    'profile_details_updated_successfully':
        'Your profile details updated successfully',
    "services": "Services",
    "numberTimesUsed": "numberTimesUsed",
    // Start adding by: Nadeen Mohamed
    // Added at date: 9/11/2024
    // add new translations
    'choose_car': 'Choose Car',
    "select_period": "Please select a period (AM/PM).",
    "select_time": "Please select a time.",
    "select_date": "Please select a date.",
    "select_address": "Please select an address.",
    "select_car": "Please select a car.",
    "select_car_only": "Select a car.",
    "missing_service_details": "Service details are missing.",
    // end by Nadeen Mohamed at date: 9/11/2024

    // Start adding by: Nadeen Mohamed
    // added at date: 10/11/2024
    // Add new translations
    "select_branch": "Please select a branch.",
    "select_branch_only": "Select branch.",
    "failed_to_load_branches": "Failed to load branches.",
    "no_branches_found": "No branches found.",
    // End by: Nadeen Mohamed at date: 10/11/2024
    "no_notification": "no notifications yet",
    //added by Helmy (11/11/2024)
    "color": "Color",
    //end added by Helmy
    'item_added_to_cart_successfully': 'Item Added To Cart Successfully',
    "added_to_cart": "item added to cart",
    // start adding by: Nadeen Mohamed
    // start adding at date: 21/11/2024
    // add new translations
    "branch_selection": "Please select a branch for inside reservations.",
    "address_selection": "Please select an address for outside reservations.",
    // End by: nadeen mohamed at date 21/11/2024
    //start by amr
    "add_reservation_date": "Add Reservation Date",
    "car": "car",
    "color": "color",
    "number": "number",
    'please_select_an_address': 'Please select an address',
  };

  // Arabic translations
  final Map<String, String> ar = {
    'app': ' التطبيق',
    'language': 'لغة ',
    'search_title': 'البحث',
    'my_address': 'عناويني',
    'search_result': 'نتائج البحث', //Ghaith ----(4/11/2024)
    'choose_language': 'من فضلك قم بإختيار لغة التطبيق المناسبة لك',
    'enter_phone': "من فضلك قم بإدخال رقم الهاتف المسجل لبدأ التطبيق",
    'password': "كلمة المرور",
    'sign_in': "تسجيل دخول",
    'confirm': "تأكيد",
    'no_account': "ليس لديك حساب بعد؟",
    'create_account': "حساب جديد",
    'phone_number': "رقم الجوال",
    'enter_phone_instruction': "من فضلك قم بإدخال رقم الجوال الخاص بك",
    'enter_code': "أدخل الكــود",
    'enter_code_instruction': "من فضلك قم بإدخال كود التأكيد المرسل علي رقمك",
    'resend_code': "لم تتلقي الكود بعد؟",
    'resend': "إعادة إرسال",
    'confirm_continue': "تأكيد ومتابعة",
    'create_new_account': 'إنشاء حساب جديد',
    'complete_your_info': 'من فضلك قم بإستكمال بياناتك لبدء التطبيق',
    'full_name': 'الإسم كامل...',
    'email': 'البريد الإلكتروني',
    'phone': 'الهاتف',
    'confirm_password': 'إعادة كلمة المرور',
    'agree_terms': 'موافق على الشروط والأحكام',
    'already_have_account': 'لديك حساب بالفعل؟ تسجيل دخول',
    'terms_conditions': 'الشروط والأحكام',
    'green_car_description_1':
        'بإمكاننا الوصول لموقعك بكل سهولة فقط أدخل مكانك وسنصلك بأسرع وقت.',
    'green_car_description_2':
        'هنالك العديد من الأنواع المتوفرة، ونقدم لك بساطة الاختيار.',
    'green_car_description_3':
        'الخدمة متاحة لجميع مستخدمي تطبيق السيارة الخضراء.',
    'green_car_description_4': 'نسعى دائمًا لتقديم أفضل خدمة لعملائنا الكرام.',
    'wash': 'غسيل',
    'back': 'السابق',
    'next': 'التالى',
    'choose_payment_method': 'إختر طريقة الدفع',
    'pay_on_arrival': 'دفع عند الوصول',
    'pay_on_arrival_description': 'يمكنك الدفع لفريق الخدمة عند الوصول لموقعك.',
    'bank_payment': 'دفع بنكي',
    'bank_payment_description': 'يوفر لدينا طرق دفع مختلفة مناسبة لك.',
    'credit_debit_card': 'بطاقة ائتمان',
    'cardholder_name': 'اسم حامل البطاقة',
    'card_number': 'رقم البطاقة',
    'refund_note': 'ملحوظة: يمكنك استرداد المبلغ بعد طلب الخدمة.',
    'bank_transfer': 'تحويل بنكي',
    'confirm_payment': 'تأكيد الدفع',
    'Onboard_suptitel_1':
        "يمكننا الوصل لموقعك بكل سهولة فقط أدخل مكانك وسنصلك خدمتنا في أسرع وقت",
    'Onboard_titel_1': 'نصل لموقعك بكل سهولة',
    'Onboard_titel_2': 'خدمات مميزة لسيارتك',
    'Onboard_titel_3': 'غسيل شامل لسيارتك',
    'your_location': 'لموقعك',
    'start_app': 'بدأ التطبيق',
    'Reservation': 'حجوزاتى',
    'Reserve': 'حجز',
    'canceled': 'ملغية',
    'edit': 'تعديل',
    'confirmed': 'مؤكدة',
    'location': 'موقعك',
    'search_about_service': 'بحث عن خدمه...',
    'offers': 'العروض',
    'order_now': 'أطلب الآن',
    'rial': 'ريال',
    '/hour': '/ساعه',
    'fast_service': 'خدمات سريعه',
    'services': 'خدماتنا',
    'add_to_cart': 'أضف الي السله',
    'planes': 'الباقات',
    //edited by : Waleed (14/10/2024)
    'rial_monthly': "ريال.شهريا",
    //end edit by waleed
    'choose_a_plane': 'اختر باقه',
    'home_choose_a_plane': 'إختيــار الخطة',
    'user_profile': 'حسابى',
    'cart': 'السله',
    'reservations': 'الحجوزات',
    'call_us': 'اتصل بنا',
    'my_data': 'بياناتى',
    'my_reservations': 'حجوزاتى',
    'packages': 'الباقات',
    'edit_data': 'تعديل البيانات',
    'save': 'حفظ',
    "track_order": "تتبع الطلب",
    "service_addrise": "عنوان الخدمة",
    "sar.hour": "ريال.ساعة",
    'service_title': 'عنوان الخدمة',
    // start: edited by helmy (14/10/2024)
    'service_price': ' ريال ساعة',
    // end: edited by helmy (14/10/2024)
    'time': 'الوقت',
    'date': '17 اغسطس , الخميس',
    'address': 'العنوان',
    'details': 'تفاصيل',
    'car_details': 'تفاصيل السيارة',
    // start: removed by helmy (14/10/2024)
    /* 'car_model': 'سيارة كيا سبورتاج ',
    'car_color': 'اللون - أزرق',
    'car_number': 'رقم السيارة: K1544128',*/
    // end: removed by helmy (14/10/2024)
    'payment_details': 'تفاصيل للدفع',
    'discount': 'الخصم',
    'total_amount': 'إجمالي المبلغ',
    'continue_payment': 'متابعة الدفع',
    'normal_wash_service': 'خدمة غسيل عادي',
    'additional_value': 'قيمة إضافية',
    'service_value': 'قيمة الخدمة',
    'promo_code_number': 'رقم البرومو كود',
    'edit': ' تعديل',
    'details': 'التفاصيل',

    'car_model': 'موديل السياره: كيا سبورتاج',
    'car_color': 'لون السياره: ازرق',
    'car_number': 'رقم السياره : K1544128',

    'additional_value': 'قيمه اضافيه',
    'service_value': 'قيمه الخدمه',

    'apply': 'تطبيق',
    'price_with_currency': '1,3.87 ريال',
    'price_with_currency2': '2.87 ريال',
    'proposed_plan': 'الخطة المقترحة',
    "active": "نشطة",
    "month": "شهر",
    'order_15_times_per_month': 'إمكانية الطلب 15 مرة شهريا',
    '24_7_support': 'دعم فني علي مدار اليوم',
    'choose_plan': 'إختيار الخطة',
    'choose_appropriate_plan': 'من فضلك قم بإختيار الخطة المناسبة',
    'monthly': 'شهريا',
    'select_plan': 'إختيــار الخطة',
    'expiry_date': "تاريخ الإنتهاء",
    'inactive': 'غير نشط',
    //changed by waleed (19/10/2024)
    "premium_plan": "الخطة المميزة",
    //END changed by waleed (19/10/2024)
    'fast_access': 'وصول سريع',
    'renew_package': 'تجديد الباقة',
    'change_plan': 'تغيير الخطة',
    'plan': 'الخطة',
    // start: created by nadeen (13/10/2024)
    'type_of_reservation': 'نوع الحجز',
    'internal_reservation': 'داخلي',
    'external_reservation': 'خارجي',
    'choose_date': 'إختيار التاريخ',
    'home_address': 'عنوان المنزل',
    'home_address2': 'عنوان منزل 2',
    'work_address': 'عنوان العمل',
    // Edited by: nadeen mohamed
    // Edited at date: 15/10/2024
    // add primary address instead of mother's address
    'primary_address': 'العنوان الأساسي',
    // end
    'neighborhood': 'الحي',
    'street': 'الشارع',
    'city': 'المدينة',
    'choose_time': 'إختيار الوقت',
    'additional_products': 'منتجات إضافية',
    'air_freshener': 'فواحة',
    'tissues': 'مناديل',
    'add_notes': 'إضافة ملاحظات',
    'confirm_booking': 'تأكيد الحجــز',
    'service_data_prompt': 'من فضلك قم بإدخال بيانات الخدمة المطلوبة',
    'confirm_date': 'تأكيد التاريخ',
    // End(13/10/2024)
    'service_provider':
        'مقدم الخدمة', // added by Naira ---13/10/2023--- for track order feature
    'back_to_reservations':
        'عودة للحجوزات', // added by Naira ---13/10/2023--- for track order feature
    // start: created by helmy (14/10/2024)
    'car_model': 'kia Sportage',
    "car": 'سياره',
    'car_color': ' اللون',
    'blue': ' - ازرق',
    'car_number': 'رقم السيارة: ',
    "K1544128": "K1544128",
    "carNumber": "رقم السيارة",
    "carType": "نوع السيارة",
    "carColor": "لون السيارة",
    "confirmDetails": "تأكيد التفاصيل",
    // end: created by helmy (14/10/2024)
    "notifications": "الاشعارات",

    "track_order_now": "يمكنك تتبع طلبك الآن",
    "car_wash_service": "قم بغسيل سيارتك وتنظيفها نأتي لك أيا كان موقعك",
    "request_services_now": "يمكنك طلب خدماتك الآن",
    //added by waleed (16/10/2024)
    "current_plan": "الخطة الحالية",
    //Ghaith --(16/10/2024)
    'set_address_as_default': 'تعيين كعنوان إفتراضي',
    //start: created by helmy (19/10/2024)
    'Create a new account': 'إنشاء حساب جديد',
    'Please complete your information to start the app':
        'من فضلك قم بإستكمال بياناتك لبدء التطبيق',
    'Full Name': 'الإسم كامل',
    'Email': 'البريد الإلكتروني',
    'Phone Number': 'رقم الهاتف',
    'Password': 'كلمة المرور',
    'Confirm Password': 'إعادة كلمة المرور',
    'Agree to': 'موافق علي',
    'Terms and Conditions': 'الشروط والأحكام',
    'Create Account': 'إنشاء حساب',
    'Already have an account?': 'لديك حساب بالفعل؟',
    'Sign In': 'تسجيل دخول',
    "Phone": "رقم الهاتف",
    "We can reach your location easily, just enter your place and we will deliver our service to you as quickly as possible":
        "يمكننا الوصل لموقعك بكل سهولة فقط ادخل مكانك وسنصلك خدمتنا في أسرع وقت",
    "There are many types of Lorem Ipsum texts available, but the majority have been altered in some way by inserting some rarities or random words into the text":
        "هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص.",
    "If you want to use a Lorem Ipsum text, you should first make sure that there are no embarrassing or inappropriate words or phrases hidden in the text.":
        "إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات مخجلة أو غير لائقة مخبأة في هذا النص.",
    "While all online Lorem Ipsum text generators repeat sections of the same Lorem Ipsum text multiple times as needed.":
        "بينما تعمل جميع مولدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تطلبه الحاجة.",
    "Terms": "الشروط",
    // Edited by: nadeen mohamed
    // Edited at date: 20/10/2024
    // Edit note: add comma(,) to the end of the line
    "And Conditions": "والأحكام",
    //added by waleed (19/10/2024)
    'no_country_found': 'لم يتم العثور على دولة',
    'offer': 'خصم',
    'national_day': 'اليوم الوطني',
    'exterior_wash': 'غسيل خارجي',
    'interior_wash': 'غسيل داخلي',
    'vip_wash': 'غسيل VIP',
    'full_wash': 'غسيل شامل',
    'discount_on_standard_car_wash': 'خصم علي الغسيل العادي للسيارات',
    'vip_plan': 'خطة VIP',
    'diamond_plan': 'الخطة الماسية',
    //end added by waleed (19/10/2024)
    //Start added by Ghaith (19/10/2024)
    'add_address': 'إضافة عنوان',
    //End added by Ghaith (19/10/2024)
    // Start by: Nadeen Mohamed
    // Start at date: 20/10/2024
    // Add more translation in ar
    'cart': 'السلة',
    'cart_contents': 'محتوي السلة',
    'continue': 'متابعة',
    'no_services_in_cart': 'لا يوجد خدمات في السلة',
    'add_item': 'إضافة عنصر',
    'congratulations_text': 'مبروك...تم إتمام العملية بنجاح',
    'payment_completed': 'مبروك تم إتمام عملية الدفع والطلب بنجاح',
    'back_to_home': 'عودة للرئيسية',
    // End by: Nadeen Mohamed at date (20/10/2024)
    'landline_phone': 'الهاتف الأرضي',
    'send_a_message': 'كتابة رسالــة',
    'type_a_message': 'كتابة الرسالة...',
    'send': 'إرسال',
    'setting': 'الإعدادات',
    'user_name': 'سعد مرزوق',
    'language': 'لغة',
    'allow_notifications': 'تفعيل الإشعارات',
    'my_profile': 'حسابي',
    'service_instructions': 'شروط الخدمة',
    'log_out': 'تسجيل خروج',
    //Start Ghaith(21/10/2024)
    'city': 'المدينه',
    'address_name': 'اسم العنوان',
    'area': 'المنطقة',
    'neighborhood': 'الحي',
    'street': 'الشارع',
    'confirm_address': 'تاكيد العنوان',
    'home_address': 'عنوان المنزل',
    'work_address': 'عنوان العمل ',
    'name_of_the_street_or_neighborhood': 'اسم الشارع او الحي ',
    'add_new_address': 'اضافة عنوان ',
    //End Ghaith(21/10/2024)
    //start Amr Elnbawy 22/10/2024
    'create_account1': "إنشاء حساب",
    //end Amr Elnbawy 22/10/2024
    //added by waleed (23/10/2024)
    'Enter_password': 'من فضلك أدخل كلمة المرور',
    'Password_must_be_8_chars': 'كلمة المرور يجب أن تكون 8 أحرف على الأقل',
    'Uppercase_required':
        'كلمة المرور يجب أن تحتوي على حرف كبير واحد على الأقل',
    'Lowercase_required':
        'كلمة المرور يجب أن تحتوي على حرف صغير واحد على الأقل',
    'Number_required': 'كلمة المرور يجب أن تحتوي على رقم واحد على الأقل',
    'Special_char_required':
        r'كلمة المرور يجب أن تحتوي على حرف خاص واحد (!@#\$&*~)',
    'Enter_email': 'من فضلك أدخل البريد الإلكتروني',
    'Valid_email_required': 'من فضلك أدخل عنوان بريد إلكتروني صالح',
    'Enter_name': 'من فضلك أدخل الاسم',
    'Valid_name_required': 'من فضلك أدخل اسمًا صالحًا',
    'Name_must_be_2_chars': 'الاسم يجب أن يكون 2 حرف على الأقل',
    'Field_required': 'هذا الحقل لا يمكن أن يكون فارغًا',
    'Valid_phone_required': 'من فضلك أدخل رقم هاتف صالح',
    "field_can't_be_empty": "لا يمكن ترك هذا الحقل فارغ",
    //added by waleed at (26/10/2024)
    "error": "خطأ",
    "unknown_error_occured": 'حدث خطأ ما ',
    'edit_address': 'تعديل العنوان',

    //end added by waleed

    //added by amr elnbawy at(28/10/2024)
    "pennding": "انتظار",
    "cancel": "الغاء",

    //end added by amr
    //added by helmy at (30/10/2024)
    "Check that password and confirmed password are the same.":
        "تأكد من أن كلمة المرور وكلمة المرور المؤكدة متطابقتان.",
    "Please select a profile image.": "يرجى اختيار صورة للملف الشخصي.",
    "You must accept the terms and conditions":
        "يجب عليك قبول الشروط والأحكام.",
    // Edited by: Nadeen Mohamed
    // Edited at date: 31/10/2024
    // Edit note: Add comma to the end of the line
    "Error!!": "خطأ!!",
    //end added by helmy
    //added by Ghaith (1/11/2024)
    'address_update_successfully': 'تم تعديل العنوان بنجاح',
    'success': 'تمت العمليه بنجاح',
    'Continue': 'متابعه',
    'address_added_successfully': 'تمت اضافة العنوان بنجاح',
    //end added by Ghaith (30/10/2024)
    //added by waleed (1/11/2024)
    'forget_password': 'نسيت كلمة المرور؟',
    'reset_password': 'اعادة تعيين كلمة المرور',
    //end added by waleed (1/11/2024)
    //added by omnia mohamed (3/11/2024)
    "additional_product": "منتجات إضافية",
    // Arabic and English translations for time periods (added by waleed at (4/11/2024))
    'yearly': 'سنوي',
    'half_yearly': 'نصف سنوي',
    'monthly': 'شهري',
    'weekly': 'أسبوعي',
    'daily': 'يومي',
    //end added by Waleed (4/11/2024)
    //added by helmy at (4/11/2024)
    'please enter promo code': "من فضلك أدخل كود الخصم",
    //end added by helmy
    'products': 'المنتجات',
    "services": "الخدمات",
    "numberTimesUsed": "عدد مرات الطلب",
    //end added by Waleed (5/11/2024)
    'enter_phone_reset_password':
        'يرجى إدخال رقم الهاتف المسجل لإعادة تعيين رقم المرور الخاص بك.',
    //end added by Waleed (5/11/2024)
    //added by Helmy (6/11/2024)
    "please select car color": "يرجى تحديد لون السيارة",
    "please select car number": "يرجى تحديد رقم السيارة",
    "please select car type": "يرجى تحديد نوع السيارة",
    //end added by Helmy (6/11/2024)
    //added by waleed (6/11/2024)
    'reset_password_code_send_success': "تم إرسال كود تعيين كلمة المرور بنجاح",
    'profile_details_updated_successfully':
        "تم تحديث بيانات حسابك الشخصي بنجاح",
    // Added by: Nadeen Mohamed
    // Added at date: 9/11/2024
    // Add new translations
    'choose_car': 'اختيار السيارة',
    "select_period": "يرجى اختيار الفترة (ص/م).",
    "select_time": "يرجى اختيار الوقت.",
    "select_date": "يرجى اختيار التاريخ.",
    "select_address": "يرجى اختيار العنوان.",
    "select_car": "يرجى اختيار السيارة.",
    "missing_service_details": "تفاصيل الخدمة مفقودة.",
    "select_car_only": "اختر سيارة.",
    // End by: Nadeen Mohamed at date 9/11/2024

    // Start adding by: Nadeen Mohamed
    // added at date: 10/11/2024
    // Add new translations
    "select_branch": "يرجى اختيار الفرع.",
    "select_branch_only": "اختر فرعاً.",
    "failed_to_load_branches": "فشل في تحميل الفروع.",
    "no_branches_found": "لم يتم العثور على فروع.",

    // End by: Nadeen Mohamed at date: 10/11/2024
    "no_notification": "لا يوجد اشعارات",
    //added by Helmy (11/11/2024)
    "color": "اللون",
    //end added by Helmy (11/11/2024)
    'item_added_to_cart_successfully': 'تمت إضافه العنصر إلي السله بنجاح',
    // added by omnia mohamed (21/11/2024)
    "added_to_cart": "تم اضافة العنصر الي السلة",
    // start adding by: Nadeen Mohamed
    // start adding at date: 21/11/2024
    // add new translations
    "branch_selection": "يرجى اختيار فرع للحجوزات الداخلية.",
    "address_selection": "يرجى اختيار عنوان للحجوزات الخارجية.",
    // End by: nadeen mohamed at date 21/11/2024
    //start adding by amr at 25/11/2024
    "add_reservation_date": "إضافة تاريخ الحجز",
    "car": "سيارة",
    "color": "لون",
    "number": "رقم",
    'please_select_an_address': 'يرجى اختيار عنوان',
    //end
  };

  @override
  Map<String, Map<String, String>> get keys => {'en': en, 'ar': ar};
}
