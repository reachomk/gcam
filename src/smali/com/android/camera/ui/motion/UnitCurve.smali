.class public Lcom/android/camera/ui/motion/UnitCurve;
.super Ljava/lang/Object;
.source "UnitCurve.java"


# instance fields
.field private final xFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

.field private final yFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 3

    .prologue
    .line 2029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2030
    new-instance v0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    invoke-direct {v0, p1, p3}, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/motion/UnitCurve;->xFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    .line 2031
    new-instance v0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/motion/UnitCurve;->yFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    .line 2032
    return-void
.end method

.method private static solve(FLcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;)F
    .locals 9

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v7, 0x358637bd    # 1.0E-6f

    const/4 v0, 0x0

    .line 2061
    .line 2064
    const/4 v1, 0x0

    move v3, v1

    move v1, p0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    .line 2065
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->value(F)F

    move-result v4

    sub-float/2addr v4, p0

    .line 2066
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    .line 2104
    :cond_0
    :goto_1
    return v1

    .line 2069
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->derivative(F)F

    move-result v5

    .line 2070
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 2073
    div-float/2addr v4, v5

    sub-float v4, v1, v4

    .line 2064
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_0

    .line 2081
    :cond_2
    cmpg-float v1, p0, v0

    if-gez v1, :cond_3

    move v1, v0

    .line 2082
    goto :goto_1

    .line 2084
    :cond_3
    cmpl-float v1, p0, v2

    if-lez v1, :cond_6

    move v1, v2

    .line 2085
    goto :goto_1

    .line 2094
    :cond_4
    cmpl-float v3, p0, v3

    if-lez v3, :cond_5

    .line 2100
    :goto_2
    sub-float v2, v0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    move v8, v1

    move v1, v2

    move v2, v8

    .line 2088
    :goto_3
    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    .line 2089
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->value(F)F

    move-result v3

    .line 2090
    sub-float v4, v3, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    goto :goto_1

    :cond_5
    move v0, v1

    move v1, v2

    .line 2097
    goto :goto_2

    :cond_6
    move v1, p0

    move v8, v0

    move v0, v2

    move v2, v8

    goto :goto_3
.end method


# virtual methods
.method public tAt(F)F
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/camera/ui/motion/UnitCurve;->xFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    iget-object v1, p0, Lcom/android/camera/ui/motion/UnitCurve;->yFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    invoke-static {p1, v1}, Lcom/android/camera/ui/motion/UnitCurve;->solve(FLcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->value(F)F

    move-result v0

    return v0
.end method

.method public valueAt(F)F
    .locals 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/camera/ui/motion/UnitCurve;->yFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    iget-object v1, p0, Lcom/android/camera/ui/motion/UnitCurve;->xFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    invoke-static {p1, v1}, Lcom/android/camera/ui/motion/UnitCurve;->solve(FLcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->value(F)F

    move-result v0

    return v0
.end method
