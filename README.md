# Amplification-Roassal3

Test Amplification for Roassal3

### Current status 

- under development

## How to load
```smalltalk
Metacello new
  baseline: 'AmplificationRoassal3';
  repository: 'github://mabdi/Amplification-Roassal3/src';
  load.
```

## How to Run
Run:

```smalltalk
TestAmplificationRoassel new amplifyAndVisualize
```

Or simply click on Run script icon next to `amplifyAndVisualize` method. You can find the generated classes in `AmplificationTempClasses` package.

![Run Script](screenshots/Screenshot&#32;2019-10-28&#32;at&#32;10.50.14.png)

## Visualization window

Small-Amp uses a simple visualizing window. This window appears when the run of `amplifyAndVisualize` method finishes.

![Visualise window](screenshots/Screenshot&#32;2019-10-28&#32;at&#32;13.14.59.png)

1. List of classes has been amplified
2. Versions -original, amplified, amplified and minified- of the class (class selected in 1).
3. Mutation status (for version selected in 2)
4. List of mutants (mutants list selected in 3)
5. Method before mutaion (mutant selected in 4)
6. Method after mutation (mutant selected in 4)
7. List of methods (class version selected in 2)
8. Method source code (method selected in 7)
