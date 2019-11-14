# Amplification-Roassal3

Test Amplification for Roassal3 (works on the forked version: https://github.com/mabdi/Roassal3)

### Current status 

- under development

## How to load

Set the Bytecode Backend to `SistaV1` in the prefrence:

![ByteCode Backend](screenshots/Screenshot&#32;2019-11-09&#32;at&#32;18.09.31.png)

Then run the following code:

```smalltalk
Metacello new
  baseline: 'AmplificationRoassal3';
  repository: 'github:///mabdi/Amplification-Roassal3/tree/ampOnForked/src';
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

1. List of classes have been amplified
2. Versions for the class selected in 1.
3. Mutation status for the selected version in 2.
4. List of mutants (mutants list selected in 3)
5. Method before mutaion for mutant selected in 4.
6. Method after mutation for mutant selected in 4.
7. List of methods for the class version selected in 2.
8. Source code for the method selected in 7.

## Generated versions

Currently, Small-Amp creates this versions:

- Amp: amplified tests generated from original.
- AmpMin: The assert statements which doesn't kill a mutant is removed from Amp.
- AmpMinAdd: AmpMin added to original one.

## Coverage

[coverage.md](coverage.md)

