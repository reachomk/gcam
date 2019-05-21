.class public final Lcom/google/android/apps/lightcycle/panorama/transitions/FisheyeTargetSet;
.super Ljava/lang/Object;
.source "FisheyeTargetSet.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;


# instance fields
.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private targetScale:[F

.field private targetsX:[F

.field private targetsY:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x26

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/FisheyeTargetSet;->points:Ljava/util/ArrayList;

    .line 13
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/FisheyeTargetSet;->targetsX:[F

    .line 55
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/FisheyeTargetSet;->targetsY:[F

    .line 97
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/FisheyeTargetSet;->targetScale:[F

    return-void

    .line 13
    :array_0
    .array-data 4
        -0x409b4e87
        -0x40a3d70a    # -0.86f
        -0x40a3d70a    # -0.86f
        -0x40c5f927
        -0x40cb17df
        -0x40cb17df
        -0x40d70a3d    # -0.66f
        -0x40d70a3d    # -0.66f
        -0x41317e56
        -0x4134e810
        -0x4134e810
        -0x413bbbc7
        -0x413bbbc7
        -0x41428f5c    # -0.37f
        -0x41428f5c    # -0.37f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ebd70a4    # 0.37f
        0x3ebd70a4    # 0.37f
        0x3ec44439
        0x3ec44439
        0x3ecb17f0
        0x3ecb17f0
        0x3ece81aa
        0x3f28f5c3    # 0.66f
        0x3f28f5c3    # 0.66f
        0x3f34e821
        0x3f34e821
        0x3f3a06d9
        0x3f5c28f6    # 0.86f
        0x3f5c28f6    # 0.86f
        0x3f64b179
        -0x409b4e87
    .end array-data

    .line 55
    :array_1
    .array-data 4
        0x0
        -0x41444439
        0x3ebbbbc7
        0x0
        -0x413d70a4    # -0.38f
        0x3ec28f5c    # 0.38f
        -0x40d62fcf
        0x3f29d031
        0x0
        -0x41369d0f
        0x3ec962f1
        -0x40ca3d71    # -0.71f
        0x3f35c28f    # 0.71f
        -0x40a2fc9c
        0x3f5d0364
        -0x408e81ba
        -0x40c5f927
        -0x41317e56
        0x0
        0x3ece81aa
        0x3f3a06d9
        0x3f717e46
        -0x40a2fc9c
        0x3f5d0364
        -0x40ca3d71    # -0.71f
        0x3f35c28f    # 0.71f
        -0x41369d0f
        0x3ec962f1
        0x0
        -0x40d62fcf
        0x3f29d031
        -0x413d70a4    # -0.38f
        0x3ec28f5c    # 0.38f
        0x0
        -0x41444439
        0x3ebbbbc7
        0x0
        0x0
    .end array-data

    .line 97
    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method


# virtual methods
.method public final drawTargets$5135MHICCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BRCD5JMGT33F5HMOP9FE1GMSRRIC5MM2BQKC5P6EPBK9LGMSOB7CLP3MMQ6954IILG_(FLcom/google/android/apps/lightcycle/panorama/TargetManager;[FII)V
    .locals 8

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 112
    if-nez p2, :cond_1

    .line 128
    :cond_0
    return-void

    .line 115
    :cond_1
    int-to-float v0, p4

    div-float v1, v0, v2

    .line 116
    int-to-float v0, p5

    div-float v2, v0, v2

    .line 117
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v3, 0x3f733333    # 0.95f

    mul-float/2addr v3, v0

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/FisheyeTargetSet;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/FisheyeTargetSet;->targetsX:[F

    array-length v4, v0

    .line 120
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 121
    invoke-virtual {p2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->beginTargetSet()V

    .line 122
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 123
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/FisheyeTargetSet;->targetsX:[F

    aget v6, v6, v0

    mul-float/2addr v6, p1

    mul-float/2addr v6, v3

    add-float/2addr v6, v1

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 124
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/FisheyeTargetSet;->targetsY:[F

    aget v6, v6, v0

    mul-float/2addr v6, p1

    mul-float/2addr v6, v3

    add-float/2addr v6, v2

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 125
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/transitions/FisheyeTargetSet;->targetScale:[F

    aget v6, v6, v0

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    invoke-virtual {p2, v5, p3, v6}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawTargetOrthographic(Landroid/graphics/PointF;[FF)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
