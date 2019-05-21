.class Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;
.super Ljava/lang/Object;
.source "UnitBezier.java"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .prologue
    const/high16 v1, 0x40400000    # 3.0f

    .line 2129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2130
    mul-float v0, v1, p1

    iput v0, p0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->c:F

    .line 2131
    sub-float v0, p2, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->c:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->b:F

    .line 2132
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->c:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->a:F

    .line 2133
    return-void
.end method


# virtual methods
.method public derivative(F)F
    .locals 3

    .prologue
    .line 1140
    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->a:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->c:F

    add-float/2addr v0, v1

    return v0
.end method

.method public value(F)F
    .locals 2

    .prologue
    .line 1136
    iget v0, p0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->a:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->b:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->c:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method
