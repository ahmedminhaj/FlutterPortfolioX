Input breakpoint<Input>(
    double input, Input desktop, Input tablet, Input mobile) {
  if (input > 800) {
    return desktop;
  } else if (input > 600 && input < 800) {
    return tablet;
  } else {
    return mobile;
  }
}
