import 'package:empty_placeholder_view/src/values/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinKitLoader extends StatelessWidget {
  final LoaderName? loaderName;
  final Color? color;
  final double? size;

  const SpinKitLoader({
    Key? key,
    this.loaderName,
    this.color,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (loaderName != null)
        ? _getSpinKitLoader(context)!
        : SpinKitThreeBounce(
            color: Theme.of(context).colorScheme.error,
            size: size ?? 32,
          );
  }

  Widget? _getSpinKitLoader(BuildContext context) {
    switch (loaderName) {
      case LoaderName.rotatingPlain:
        {
          return SpinKitRotatingPlain(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.doubleBounce:
        {
          return SpinKitDoubleBounce(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.wave:
        {
          return SpinKitWave(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.wanderingCubes:
        {
          return SpinKitWanderingCubes(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.fadingFour:
        {
          return SpinKitFadingFour(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.fadingCube:
        {
          return SpinKitFadingCube(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.pulse:
        {
          return SpinKitPulse(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.chasingDots:
        {
          return SpinKitChasingDots(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.circle:
        {
          return SpinKitCircle(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.cubeGrid:
        {
          return SpinKitCubeGrid(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.fadingCircle:
        {
          return SpinKitFadingCircle(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.rotatingCircle:
        {
          return SpinKitRotatingCircle(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.foldingCube:
        {
          return SpinKitFoldingCube(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.pumpingHeart:
        {
          return SpinKitPumpingHeart(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.hourGlass:
        {
          return SpinKitHourGlass(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.pouringHourGlass:
        {
          return SpinKitPouringHourGlass(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.pouringHourGlassRefined:
        {
          return SpinKitPouringHourGlassRefined(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.fadingGrid:
        {
          return SpinKitFadingGrid(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.ring:
        {
          return SpinKitRing(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.ripple:
        {
          return SpinKitRipple(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.spinningLines:
        {
          return SpinKitSpinningLines(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.squareCircle:
        {
          return SpinKitSquareCircle(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.dualRing:
        {
          return SpinKitDualRing(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.pianoWave:
        {
          return SpinKitPianoWave(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.dancingSquare:
        {
          return SpinKitDancingSquare(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.threeInOut:
        {
          return SpinKitThreeInOut(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
      case LoaderName.threeBounce:
      default:
        {
          return SpinKitThreeBounce(
            color: color ?? Theme.of(context).colorScheme.secondary,
            size: size ?? 32,
          );
        }
    }
  }
}
