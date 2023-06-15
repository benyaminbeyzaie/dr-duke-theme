# Dr. Duke Theme

design system provides a set of reusable styles and components for consistent and efficient app development. It includes predefined colors, typography, spacing, shadows, and radius values to maintain a cohesive visual language across our apps.

## Access

Access the predefined styles and components through the DukeTheme instance:

```dart
Colors: duketheme.color
Typography: duketheme.typography
Spacing: duketheme.spacing
Radius: duketheme.radius
Shadows: duketheme.shadow
Size: duketheme.size
```

## Usage

```dart
import 'package:dr_duke_theme/theme/theme.dart';

Container(
  height: context.duketheme.size.xs,
  margin: context.duketheme.spacing.xd,
  decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.duketheme.radius.lg),
        color: context.duketheme.color.primary,
        boxShadow: [context.dukeTheme.shadow.cardShadow],
      ),
  child: Text(
         'Hello World!',
         style: context.duketheme.typography.headline,
         ),
  ),


```
