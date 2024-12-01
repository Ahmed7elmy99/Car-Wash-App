class AppStrings {
  // urls and endpoints
  static String baseUrl = 'http://green.greencar.app/api';
  // Created By: Ghaith
  // create date: 28/10/2024
  static String addreess = '/user-address';
  static String deleteAddress = '/addresse/delete/';
  static String updateAddress = '/addresse/edit/';
  static String setAddressAsDefault = '/addresses/default';
  static String search = '/filter';

  ///end Ghaith
  ///added by amr 23/10/2024
  ///Edited by: Ghaith
  ///Edited at: 26/10/2024
  ///Edit Note: Added / to the string
  static String userBookings = "/my-bookings";
  static String confirmBookings = "/confirm-booking";
  static String cancelBookings = "/cancel-booking";

  ///end
  ///added by amr 26/10/2024
  static String notifications = "/notifications";
  static String makeReservation = "/time/plan";

  ///end
  static String login = '/login';
  static String createBooking = '/booking';

  // start by: nadeen mohamed
  // start at date: 24/10/2024
  // add endpoint for all products
  static String allProducts = '/products';

  ///added by helmy 26/10/2024
  static String signUp = '/signup';
  static String termsAndConditions = '/terms';

  //end by helmy
  //added by Waleed (26/10/2024)
  static String verfication = '/verificatoin';
  static String forgotPassword = '/forgot-password';
  static String resendCode = '/resend-verification';
  static String logout = '/logout';
  static String resetPassword = '/reset-password';
  static String refreshToken = '/refresh-token';
  static String paymentWay = '/payment-way';

  //added by Naira[27/10/2024]
  static String offers = '/offers';
  static String allServices = '/services';

  // start by : nadeen mohamed
  // start at date: 27/10/2024
  // add cart endpoint
  static String showCart = '/cart';
  // end by: nadeen mohamed

  //added by Naira[29/10/2024]
  //change the name of all plans to plans (by waleed at 2/11/2024)
  static String plans = '/plans';
  static String allPlans = '/plans';
  static String profile = '/profile';

  //added by Helmy[30/10/2024]
  static String serviceDetails = '/my-bookings';
  static String addCoupon = '/coupon';
  //end by Helmy

  //added by Waleed (30/10/2024)
  static String updateProfile = '/update-profile';

  //added by Naira[31/10/2024],
  static String addToCart = '/add/cart';
  // added by Waleed (2/11/2024)
  static String myPlans = '/my-plans';
  static String renew = '/renew/';
//added by omnia [3/11/2024]
  static String allAdditionalProducts = '/products';

  //added by Naira[3/11/2024],
  static String contactUs = '/contact_us';

  //added by Helmy[6/11/2024],
  static String carTypes = '/types-car';
  static String carDetails = '/user-car';

  //ended by Helmy[6/11/2024],

  // start adding by: nadeen mohamed
  // added at date: 7/11/2024
  // add user-car end point
  static String useCar = '/user-car';
  // end by : Nadeen mohamed

  // start adding by: Nadeen Mohamed
  // added at date: 10/11/2024
  // add branchs endpoint
  static String branchs = '/branchs';
  // End by: Nadeen Mohamed at date: 10/11/2024
  //added by amr on 11/11/2024
  static String singlePlanInfo = "/single-plan";
  //added by omnia [11/11/2024]
  static String removeFromCart = '/cart/remove/';
  //added by Waleed (27/11/2024)
  static String createOrder = '/create-order';
  static String cashOnDelivery = '/cash_on_delivery/';
  static String myFatoorahSuccess = '/myfatoorah/success';
  static String myFatooraherror = '/myfatoorah/error';

}