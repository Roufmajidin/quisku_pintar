class AuthenticationUrl {
  final loginWithEmailAndPasswordUrl = '/auth/login';
  final refreshAccessTokenUrl = '/auth/refresh';
  final logoutUrl = '/auth/logout';
  final registerUrl = '/auth/register';
  final googleCallbackUrl = '/auth/login/google/callback/android';
  final changePasswordUrl = '/auth/change-password';
  final requestEmailVerificationUrl = '/email-verification/request';
  final verifyOtpEmailVerificationUrl = '/email-verification/verify';
  final verifyOtpResetPasswordUrl = '/reset-password/verify';
  //(mhs! 10) add request forgot password url
  final requestForgotPassword = '/reset-password/request';
  //(mhs! 11) add reset password url
  final resetPassword = '/auth/reset-password';
}
