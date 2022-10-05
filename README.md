# flutter_storyways_design_sample
Storyways ui design implementation sample code, using
* Architecture: Model-View-Controller
* State Management: Riverpod

## App use

The App shows two lists of books with a book search feature.
* The "Continue" section is horizontal scrollable
* The "New" section is fix below the continue section, where both are vertical scrollable together
* The book search reveals a list of search results.

## Directory structure

### lib/core

Contains global relevant definitions, features and utilities. 

### lib/feature

Contains a specific feature of the application.

## Feature implementation

A feature contains the model, view and controller for its scope.

#### .../view

The view contains the actual feature representation as well as the different widgets of it.

#### .../model

The model contains the defined data structure with required data conversion.

#### .../controller

The controller contains the implementation with access to external APIs.

