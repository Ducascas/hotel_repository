// ignore_for_file: constant_identifier_names

abstract class AppConstants {
  static const CACHED_HOTEL_LIST = 'CACHED_HOTEL_LIST';
  static const SERVER_FAILURE_MESSAGE = 'Server Failure';
  static const CACHED_FAILURE_MESSAGE = 'Cache Failure';

  static textSubmit(int? randomNumber) =>
      'Подтверждение заказа №$randomNumber может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.';

  static const textSuccess = 'Ваш заказ принят в работу';
  static const textPaid = 'Заказ оплачен';
}
