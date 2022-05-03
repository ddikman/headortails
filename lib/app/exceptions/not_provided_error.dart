class NotProvidedError extends Error {
  final String providerName;

  NotProvidedError(this.providerName);

  @override
  String toString() {
    return "$providerName is not yet assigned";
  }
}