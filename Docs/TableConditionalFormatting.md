---
external help file: Dashimo-help.xml
Module Name: Dashimo
online version:
schema: 2.0.0
---

# TableConditionalFormatting

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
TableConditionalFormatting [[-Name] <String>] [[-ComparisonType] <String>] [[-Operator] <String>]
 [[-Value] <Object>] [-Row] [[-Color] <RGBColors>] [[-BackgroundColor] <RGBColors>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -BackgroundColor
{{ Fill BackgroundColor Description }}

```yaml
Type: RGBColors
Parameter Sets: (All)
Aliases:
Accepted values: Black, Navy, DarkBlue, MediumBlue, Blue, DarkGreen, Green, Teal, DarkCyan, DeepSkyBlue, DarkTurquoise, MediumSpringGreen, Lime, SpringGreen, Aqua, Cyan, MidnightBlue, DodgerBlue, LightSeaGreen, ForestGreen, SeaGreen, DarkSlateGray, DarkSlateGrey, LimeGreen, MediumSeaGreen, Turquoise, RoyalBlue, SteelBlue, DarkSlateBlue, MediumTurquoise, Indigo, DarkOliveGreen, CadetBlue, CornflowerBlue, MediumAquamarine, DimGray, DimGrey, SlateBlue, OliveDrab, SlateGray, SlateGrey, LightSlateGray, LightSlateGrey, MediumSlateBlue, LawnGreen, Chartreuse, Aquamarine, Maroon, Purple, Olive, Grey, Gray, SkyBlue, LightSkyBlue, BlueViolet, DarkRed, DarkMagenta, SaddleBrown, DarkSeaGreen, LightGreen, MediumPurple, DarkViolet, PaleGreen, DarkOrchid, YellowGreen, Sienna, Brown, DarkGray, DarkGrey, LightBlue, GreenYellow, PaleTurquoise, LightSteelBlue, PowderBlue, FireBrick, DarkGoldenrod, MediumOrchid, RosyBrown, DarkKhaki, Silver, MediumVioletRed, IndianRed, Peru, Chocolate, Tan, LightGray, LightGrey, Thistle, Orchid, Goldenrod, PaleVioletRed, Crimson, Gainsboro, Plum, BurlyWood, LightCyan, Lavender, DarkSalmon, Violet, PaleGoldenrod, LightCoral, Khaki, AliceBlue, Honeydew, Azure, SandyBrown, Wheat, Beige, WhiteSmoke, MintCream, GhostWhite, Salmon, AntiqueWhite, Linen, LightGoldenrodYellow, OldLace, Red, Fuchsia, Magenta, DeepPink, OrangeRed, Tomato, HotPink, Coral, DarkOrange, LightSalmon, Orange, LightPink, Pink, Gold, PeachPuff, NavajoWhite, Moccasin, Bisque, MistyRose, BlanchedAlmond, PapayaWhip, LavenderBlush, Seashell, Cornsilk, LemonChiffon, FloralWhite, Snow, Yellow, LightYellow, Ivory, White

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Color
{{ Fill Color Description }}

```yaml
Type: RGBColors
Parameter Sets: (All)
Aliases:
Accepted values: Black, Navy, DarkBlue, MediumBlue, Blue, DarkGreen, Green, Teal, DarkCyan, DeepSkyBlue, DarkTurquoise, MediumSpringGreen, Lime, SpringGreen, Aqua, Cyan, MidnightBlue, DodgerBlue, LightSeaGreen, ForestGreen, SeaGreen, DarkSlateGray, DarkSlateGrey, LimeGreen, MediumSeaGreen, Turquoise, RoyalBlue, SteelBlue, DarkSlateBlue, MediumTurquoise, Indigo, DarkOliveGreen, CadetBlue, CornflowerBlue, MediumAquamarine, DimGray, DimGrey, SlateBlue, OliveDrab, SlateGray, SlateGrey, LightSlateGray, LightSlateGrey, MediumSlateBlue, LawnGreen, Chartreuse, Aquamarine, Maroon, Purple, Olive, Grey, Gray, SkyBlue, LightSkyBlue, BlueViolet, DarkRed, DarkMagenta, SaddleBrown, DarkSeaGreen, LightGreen, MediumPurple, DarkViolet, PaleGreen, DarkOrchid, YellowGreen, Sienna, Brown, DarkGray, DarkGrey, LightBlue, GreenYellow, PaleTurquoise, LightSteelBlue, PowderBlue, FireBrick, DarkGoldenrod, MediumOrchid, RosyBrown, DarkKhaki, Silver, MediumVioletRed, IndianRed, Peru, Chocolate, Tan, LightGray, LightGrey, Thistle, Orchid, Goldenrod, PaleVioletRed, Crimson, Gainsboro, Plum, BurlyWood, LightCyan, Lavender, DarkSalmon, Violet, PaleGoldenrod, LightCoral, Khaki, AliceBlue, Honeydew, Azure, SandyBrown, Wheat, Beige, WhiteSmoke, MintCream, GhostWhite, Salmon, AntiqueWhite, Linen, LightGoldenrodYellow, OldLace, Red, Fuchsia, Magenta, DeepPink, OrangeRed, Tomato, HotPink, Coral, DarkOrange, LightSalmon, Orange, LightPink, Pink, Gold, PeachPuff, NavajoWhite, Moccasin, Bisque, MistyRose, BlanchedAlmond, PapayaWhip, LavenderBlush, Seashell, Cornsilk, LemonChiffon, FloralWhite, Snow, Yellow, LightYellow, Ivory, White

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ComparisonType
{{ Fill ComparisonType Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases: Type
Accepted values: number, string

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
{{ Fill Name Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases: ColumnName

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Operator
{{ Fill Operator Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: lt, le, eq, ge, gt

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Row
{{ Fill Row Description }}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Value
{{ Fill Value Description }}

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
