.class public Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;
.super Ljava/lang/Object;
.source "EvCompRulerDrawer.java"


# instance fields
.field private final dashesPaint:Landroid/graphics/Paint;

.field private final dotRadiusPx:F

.field private final dotsPaint:Landroid/graphics/Paint;

.field private final leftMarkerBorderRadiusPx:F

.field private final leftMarkerHeightPx:F

.field private final leftMarkerMarginPx:F

.field private final leftMarkerPaint:Landroid/graphics/Paint;

.field private final leftMarkerTriangleWidthPx:F

.field private final leftMarkerWidthPx:F

.field private final markerDistanceFromCenterX:F

.field private final markerHeightPx:F

.field private final markerPaint:Landroid/graphics/Paint;

.field private final markerWidthPx:F

.field private numDots:I

.field private final rulerHeightPx:F

.field private final rulerMarginRightPx:F

.field private final rulerWidthPx:F

.field private final shadowRadiusPx:F

.field private final sunDrawable:Landroid/graphics/drawable/Drawable;

.field private final textPaint:Landroid/graphics/Paint;

.field private final textSizePx:F

.field private final tickAreaPadding:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 2051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2052
    const v0, 0x7f0c0007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->rulerWidthPx:F

    .line 2053
    const v0, 0x7f0c0008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->rulerHeightPx:F

    .line 2054
    const v0, 0x7f0c0009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->rulerMarginRightPx:F

    .line 2055
    const v0, 0x7f0c0018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerMarginPx:F

    .line 2056
    const v0, 0x7f0c001a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerWidthPx:F

    .line 2057
    const v0, 0x7f0c0019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerHeightPx:F

    .line 2058
    const v0, 0x7f0c001b

    .line 2059
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerTriangleWidthPx:F

    .line 2060
    const v0, 0x7f0c001d

    .line 2061
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerBorderRadiusPx:F

    .line 2062
    const v0, 0x7f0c001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->textSizePx:F

    .line 2063
    const v0, 0x7f0c0012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->shadowRadiusPx:F

    .line 2064
    const v0, 0x7f0c000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->dotRadiusPx:F

    .line 2065
    const v0, 0x7f0c000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->markerWidthPx:F

    .line 2066
    const v0, 0x7f0c000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->markerHeightPx:F

    .line 2067
    const v0, 0x7f0200d3

    invoke-static {p1, v0}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->sunDrawable:Landroid/graphics/drawable/Drawable;

    .line 2068
    const v0, 0x7f0c0010

    .line 2069
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->markerDistanceFromCenterX:F

    .line 2070
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->markerHeightPx:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->shadowRadiusPx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->tickAreaPadding:F

    .line 2071
    invoke-static {p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getDotsPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->dotsPaint:Landroid/graphics/Paint;

    .line 2072
    invoke-static {p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getDashesPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->dashesPaint:Landroid/graphics/Paint;

    .line 2073
    invoke-static {p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getMarkerPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->markerPaint:Landroid/graphics/Paint;

    .line 2074
    invoke-static {p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getLeftMarkerPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerPaint:Landroid/graphics/Paint;

    .line 2075
    invoke-static {p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getMarkerTextPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->textPaint:Landroid/graphics/Paint;

    .line 2076
    return-void
.end method

.method private drawLeftMarkerShape(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 2

    .prologue
    .line 2204
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2205
    invoke-virtual {v0, p6, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2206
    invoke-virtual {v0, p7, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2207
    add-float v1, p5, p8

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2208
    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerBorderRadiusPx:F

    add-float/2addr v1, p3

    invoke-virtual {v0, p5, p3, p5, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 2210
    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerBorderRadiusPx:F

    sub-float v1, p4, v1

    invoke-virtual {v0, p5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2211
    add-float v1, p5, p8

    invoke-virtual {v0, p5, p4, v1, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 2213
    invoke-virtual {v0, p7, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2214
    invoke-virtual {v0, p6, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2215
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 2217
    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2218
    return-void
.end method

.method private drawLeftMarkerText(Landroid/graphics/Canvas;FFFF)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2222
    const-string v0, "%+.1f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2223
    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->textSizePx:F

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2224
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2225
    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v4, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2226
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, p4

    .line 2227
    iget-object v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p5, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2228
    return-void
.end method

.method private static getColor(Landroid/content/res/Resources;I)I
    .locals 1

    .prologue
    .line 2335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method private static getDashesPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 5

    .prologue
    .line 2279
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2280
    const v1, 0x7f0b015a

    invoke-static {p0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2281
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2282
    const v1, 0x7f0c000b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2283
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2284
    const v1, 0x7f0c0012

    .line 2285
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f0c0013

    .line 2286
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f0c0014

    .line 2287
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f0b015b

    .line 2288
    invoke-static {p0, v4}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getColor(Landroid/content/res/Resources;I)I

    move-result v4

    .line 2284
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2289
    return-object v0
.end method

.method private getDotCenterY(ILandroid/graphics/Canvas;)F
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 2254
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 2255
    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->dotRadiusPx:F

    mul-float/2addr v1, v5

    .line 2257
    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->numDots:I

    add-int/lit8 v2, v2, -0x1

    .line 2259
    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->rulerHeightPx:F

    iget v4, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->tickAreaPadding:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    int-to-float v2, v2

    div-float v2, v3, v2

    .line 2261
    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->rulerHeightPx:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v5

    .line 2262
    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->tickAreaPadding:F

    add-float/2addr v0, v3

    add-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private static getDotsPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 5

    .prologue
    .line 2266
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2267
    const v1, 0x7f0b015a

    invoke-static {p0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2268
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2269
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2270
    const v1, 0x7f0c0012

    .line 2271
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f0c0013

    .line 2272
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f0c0014

    .line 2273
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f0b015b

    .line 2274
    invoke-static {p0, v4}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getColor(Landroid/content/res/Resources;I)I

    move-result v4

    .line 2270
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2275
    return-object v0
.end method

.method private static getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2345
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getLeftMarkerPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 5

    .prologue
    .line 2307
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2308
    const v1, 0x7f0b015a

    invoke-static {p0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2309
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2310
    const v1, 0x7f0c0011

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2311
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2312
    const v1, 0x7f0c0015

    .line 2313
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f0c0016

    .line 2314
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f0c0017

    .line 2315
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f0b015b

    .line 2316
    invoke-static {p0, v4}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getColor(Landroid/content/res/Resources;I)I

    move-result v4

    .line 2312
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2317
    return-object v0
.end method

.method private static getMarkerPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 5

    .prologue
    .line 2293
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2294
    const v1, 0x7f0b015a

    invoke-static {p0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2295
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2296
    const v1, 0x7f0c0011

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2297
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2298
    const v1, 0x7f0c0012

    .line 2299
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f0c0013

    .line 2300
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f0c0014

    .line 2301
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f0b015b

    .line 2302
    invoke-static {p0, v4}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getColor(Landroid/content/res/Resources;I)I

    move-result v4

    .line 2298
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2303
    return-object v0
.end method

.method private static getMarkerTextPaint(Landroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 3

    .prologue
    .line 2321
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2322
    const v1, 0x7f0b015c

    invoke-static {p0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2323
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2324
    const-string v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2325
    return-object v0
.end method

.method private getRulerCenterX(Landroid/graphics/Canvas;)I
    .locals 3

    .prologue
    .line 2250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->rulerMarginRightPx:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->rulerWidthPx:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public drawAffordanceDots(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 1093
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getRulerCenterX(Landroid/graphics/Canvas;)I

    move-result v0

    int-to-float v1, v0

    .line 1094
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->numDots:I

    div-int/lit8 v2, v0, 0x2

    .line 1095
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->numDots:I

    if-ge v0, v3, :cond_1

    .line 1096
    if-eq v0, v2, :cond_0

    .line 1101
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getDotCenterY(ILandroid/graphics/Canvas;)F

    move-result v3

    .line 1102
    iget v4, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->dotRadiusPx:F

    iget-object v5, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->dotsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1095
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1104
    :cond_1
    return-void
.end method

.method public drawRulerDashes(Landroid/graphics/Canvas;F)V
    .locals 7

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getRulerCenterX(Landroid/graphics/Canvas;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p2, v1

    sub-float v1, v0, v1

    .line 1109
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->numDots:I

    if-ge v6, v0, :cond_0

    .line 1110
    invoke-direct {p0, v6, p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getDotCenterY(ILandroid/graphics/Canvas;)F

    move-result v2

    .line 1111
    add-float v3, v1, p2

    iget-object v5, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->dashesPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1109
    add-int/lit8 v0, v6, 0x3

    move v6, v0

    goto :goto_0

    .line 1113
    :cond_0
    return-void
.end method

.method public drawRulerDots(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 1080
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getRulerCenterX(Landroid/graphics/Canvas;)I

    move-result v0

    int-to-float v1, v0

    .line 1081
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->numDots:I

    if-ge v0, v2, :cond_1

    .line 1082
    rem-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_0

    .line 1086
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getDotCenterY(ILandroid/graphics/Canvas;)F

    move-result v2

    .line 1087
    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->dotRadiusPx:F

    iget-object v4, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->dotsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1081
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1089
    :cond_1
    return-void
.end method

.method public drawRulerLeftMarker(Landroid/graphics/Canvas;FFFZ)V
    .locals 10

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 1153
    cmpl-float v0, p2, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "position must be in the range [0, 1]"

    invoke-static {v0, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 1154
    cmpg-float v0, p2, v5

    if-gtz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "position must be in the range [0, 1]"

    invoke-static {v0, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 1155
    cmpl-float v0, p3, v4

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "scale must be in the range [0, 1]"

    invoke-static {v0, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 1156
    cmpg-float v0, p3, v5

    if-gtz v0, :cond_3

    :goto_3
    const-string v0, "scale must be in the range [0, 1]"

    invoke-static {v1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 1158
    cmpl-float v0, p3, v4

    if-nez v0, :cond_4

    .line 1199
    :goto_4
    return-void

    :cond_0
    move v0, v2

    .line 1153
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1154
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1155
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1156
    goto :goto_3

    .line 1162
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->rulerHeightPx:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v8

    .line 1163
    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerWidthPx:F

    mul-float/2addr v1, p3

    .line 1164
    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerHeightPx:F

    mul-float v4, v2, p3

    .line 1165
    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerTriangleWidthPx:F

    mul-float v7, v2, p3

    .line 1168
    sub-float v2, v5, p2

    .line 1169
    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->rulerHeightPx:F

    iget v5, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->tickAreaPadding:F

    mul-float/2addr v5, v8

    sub-float/2addr v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->tickAreaPadding:F

    add-float/2addr v2, v0

    .line 1171
    div-float v0, v4, v8

    sub-float v3, v2, v0

    .line 1172
    div-float v0, v4, v8

    add-float v4, v2, v0

    .line 1188
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerMarginPx:F

    iget v5, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerWidthPx:F

    add-float/2addr v0, v5

    .line 1189
    sub-float v5, v0, v1

    .line 1190
    add-float v6, v5, v1

    .line 1191
    sub-float v7, v6, v7

    .line 1192
    sub-float v0, v7, v5

    div-float/2addr v0, v8

    add-float v9, v5, v0

    .line 1193
    iget v8, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->leftMarkerBorderRadiusPx:F

    move-object v0, p0

    move-object v1, p1

    .line 1196
    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->drawLeftMarkerShape(Landroid/graphics/Canvas;FFFFFFF)V

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move v7, v2

    move v8, v9

    .line 1198
    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->drawLeftMarkerText(Landroid/graphics/Canvas;FFFF)V

    goto :goto_4
.end method

.method public drawRulerMarker(Landroid/graphics/Canvas;FZ)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 1117
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "position must be in the range (0, 1)"

    invoke-static {v0, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 1118
    cmpg-float v0, p2, v5

    if-gtz v0, :cond_1

    :goto_1
    const-string v0, "position must be in the range (0, 1)"

    invoke-static {v1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 1120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->rulerHeightPx:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    .line 1123
    sub-float v1, v5, p2

    .line 1124
    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->rulerHeightPx:F

    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->tickAreaPadding:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->tickAreaPadding:F

    add-float/2addr v0, v1

    .line 1126
    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->markerHeightPx:F

    div-float/2addr v1, v4

    sub-float v1, v0, v1

    .line 1127
    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->markerHeightPx:F

    div-float/2addr v2, v4

    add-float/2addr v2, v0

    .line 1136
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getRulerCenterX(Landroid/graphics/Canvas;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->markerDistanceFromCenterX:F

    sub-float/2addr v3, v4

    .line 1137
    iget v4, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->markerWidthPx:F

    sub-float v4, v3, v4

    .line 1140
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 1141
    invoke-virtual {v5, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1142
    invoke-virtual {v5, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1143
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1144
    invoke-virtual {v5, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1145
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 1147
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->markerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1148
    return-void

    :cond_0
    move v0, v2

    .line 1117
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1118
    goto :goto_1
.end method

.method public drawRulerSun(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->sunDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1233
    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->sunDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 1235
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->getRulerCenterX(Landroid/graphics/Canvas;)I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    .line 1236
    iget-object v4, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->sunDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1237
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->sunDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1238
    return-void
.end method

.method public setExposureSettings(IIF)V
    .locals 2

    .prologue
    .line 1242
    add-int v0, p1, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Expecting -minExposure to be equal to maxExposure, was [%d, %d]"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/String;II)V

    .line 1245
    int-to-float v0, p2

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 1246
    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->numDots:I

    .line 1247
    return-void

    .line 1242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
