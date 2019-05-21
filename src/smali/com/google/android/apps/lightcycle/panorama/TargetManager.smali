.class public final Lcom/google/android/apps/lightcycle/panorama/TargetManager;
.super Ljava/lang/Object;
.source "TargetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;
    }
.end annotation


# static fields
.field private static final MAX_ANGLE_THRESHOLD_RAD:F

.field private static final MIN_ANGLE_THRESHOLD_RAD:F


# instance fields
.field private activeTargetAlpha:F

.field private final alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

.field private animateAvailableTargets:Z

.field private animateFirstTargetFadeIn:Z

.field private animatedTargetAlpha:F

.field private animatedTargetStartTime:J

.field private final context:Landroid/content/Context;

.field private currentDeviceTransform:[F

.field private drawAllTargets:Z

.field private halfSurfaceHeight:F

.field private halfSurfaceWidth:F

.field private hitTargetAlpha:F

.field private hitTargetTransform:[F

.field private final identityTransform:[F

.field private nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private final projected:[F

.field private reticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

.field private sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

.field private targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private final targets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation
.end field

.field private final tempTransform:[F

.field private transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

.field private final unitVector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x3c8efa35

    .line 71
    const/high16 v0, 0x41b00000    # 22.0f

    .line 4754
    mul-float/2addr v0, v1

    .line 71
    sput v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MAX_ANGLE_THRESHOLD_RAD:F

    .line 72
    const/high16 v0, 0x41400000    # 12.0f

    .line 5754
    mul-float/2addr v0, v1

    .line 72
    sput v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MIN_ANGLE_THRESHOLD_RAD:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 136
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targets:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->unitVector:[F

    .line 162
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    .line 163
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    .line 164
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    .line 172
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    .line 173
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    .line 174
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawAllTargets:Z

    .line 178
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 181
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;-><init>(Lcom/google/android/apps/lightcycle/panorama/TargetManager;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    .line 184
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animateAvailableTargets:Z

    .line 185
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animateFirstTargetFadeIn:Z

    .line 186
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetAlpha:F

    .line 187
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetStartTime:J

    .line 192
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->identityTransform:[F

    .line 199
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->context:Landroid/content/Context;

    .line 200
    return-void

    .line 161
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static normalize([F)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 726
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p0, v3

    div-float/2addr v1, v2

    aput v1, p0, v0

    .line 727
    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p0, v3

    div-float/2addr v1, v2

    aput v1, p0, v0

    .line 728
    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p0, v3

    div-float/2addr v1, v2

    aput v1, p0, v0

    .line 729
    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p0, v3

    .line 730
    return-void
.end method

.method private static setRotationTranspose([FI[F)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 735
    aget v0, p0, v1

    aput v0, p2, v1

    .line 736
    aget v0, p0, v3

    aput v0, p2, v3

    .line 737
    aget v0, p0, v4

    aput v0, p2, v4

    .line 738
    aput v2, p2, v5

    .line 739
    const/4 v0, 0x4

    aget v1, p0, v5

    aput v1, p2, v0

    .line 740
    const/4 v0, 0x5

    const/4 v1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 741
    const/4 v0, 0x6

    const/4 v1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    .line 742
    const/4 v0, 0x7

    aput v2, p2, v0

    .line 743
    const/16 v0, 0x8

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, p2, v0

    .line 744
    const/16 v0, 0x9

    const/4 v1, 0x7

    aget v1, p0, v1

    aput v1, p2, v0

    .line 745
    const/16 v0, 0xa

    const/16 v1, 0x8

    aget v1, p0, v1

    aput v1, p2, v0

    .line 746
    const/16 v0, 0xb

    aput v2, p2, v0

    .line 747
    const/16 v0, 0xc

    aput v2, p2, v0

    .line 748
    const/16 v0, 0xd

    aput v2, p2, v0

    .line 749
    const/16 v0, 0xe

    aput v2, p2, v0

    .line 750
    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p2, v0

    .line 751
    return-void
.end method


# virtual methods
.method public final beginTargetSet()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    if-nez v0, :cond_0

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 695
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    goto :goto_0
.end method

.method public final drawTargetOrthographic(Landroid/graphics/PointF;[FF)V
    .locals 6

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    if-nez v0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    move-object v1, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method public final drawTargetSet([FLjava/util/ArrayList;[FF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/ArrayList",
            "<[F>;[FF)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 640
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-nez v1, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->bind()V

    .line 644
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    move v6, v0

    .line 646
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 650
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    const v8, 0x3ecccccd    # 0.4f

    .line 4566
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 4567
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->unitVector:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 4570
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->normalize([F)V

    .line 4571
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    add-float v2, v0, v1

    .line 4572
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    add-float v3, v0, v1

    .line 4575
    if-eqz v7, :cond_2

    .line 4576
    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p3

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 654
    :catch_0
    move-exception v0

    .line 655
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method public final drawTargetSetOrthographic(Ljava/util/ArrayList;[FF)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;[FF)V"
        }
    .end annotation

    .prologue
    .line 668
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-nez v1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->bind()V

    .line 672
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 674
    const/4 v1, 0x0

    move v7, v1

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 675
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/graphics/PointF;

    move-object v2, v0

    .line 677
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-eqz v1, :cond_2

    .line 678
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :cond_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    .line 682
    :catch_0
    move-exception v1

    .line 683
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method public final drawTargetsOrthographic([F[F)V
    .locals 18

    .prologue
    .line 327
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->getTargetInRange()I

    move-result v14

    .line 330
    if-ltz v14, :cond_3

    .line 331
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    sub-float/2addr v3, v4

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    .line 1547
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAngularVelocitySquaredRad()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1548
    const v3, 0x3f32b8c2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1549
    const v3, 0x3e32b8c2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1552
    const/high16 v3, 0x40300000    # 2.75f

    const v4, 0x3e32b8c2

    sub-float/2addr v2, v4

    const v4, 0x3f060a92

    div-float/2addr v2, v4

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    const v3, 0x3c8efa35

    mul-float/2addr v2, v3

    .line 1556
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->setTargetHitAngleRadians(F)V

    .line 342
    new-instance v15, Lcom/google/android/apps/lightcycle/math/Vector3;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    neg-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    neg-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    neg-float v4, v4

    invoke-direct {v15, v2, v3, v4}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>(FFF)V

    .line 349
    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->bind()V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setContrastFactor(F)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 356
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targets:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 358
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v13, v0

    .line 359
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 361
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->unitVector:[F

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 365
    const/high16 v2, 0x3f800000    # 1.0f

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    .line 2517
    new-instance v4, Lcom/google/android/apps/lightcycle/math/Vector3;

    const/16 v5, 0x8

    aget v5, v6, v5

    neg-float v5, v5

    const/16 v7, 0x9

    aget v7, v6, v7

    neg-float v7, v7

    const/16 v8, 0xa

    aget v6, v6, v8

    neg-float v6, v6

    invoke-direct {v4, v5, v7, v6}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>(FFF)V

    .line 3074
    iget v5, v4, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    iget v6, v15, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    mul-float/2addr v5, v6

    iget v6, v4, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    iget v7, v15, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v4, v4, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    iget v6, v15, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    .line 2520
    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 2523
    sget v5, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MIN_ANGLE_THRESHOLD_RAD:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_4

    .line 2524
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->alpha:F

    .line 2525
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->scale:F

    .line 367
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawAllTargets:Z

    if-nez v3, :cond_1

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    iget v2, v2, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->alpha:F

    .line 370
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    iget v7, v3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->scale:F

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 374
    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 375
    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v2

    .line 406
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v4, 0x3

    aget v2, v2, v4

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->normalize([F)V

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v4, 0x0

    aget v2, v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    add-float/2addr v4, v2

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v5, 0x1

    aget v2, v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    mul-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    add-float/2addr v5, v2

    .line 416
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v14, :cond_c

    .line 420
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v8, v2, v3

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    const/4 v6, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v2, v8}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    const/4 v6, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    goto/16 :goto_1

    .line 432
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 439
    :catch_0
    move-exception v2

    .line 440
    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    .line 442
    :cond_2
    :goto_4
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 443
    return-void

    .line 333
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    goto/16 :goto_0

    .line 2528
    :cond_4
    :try_start_3
    sget v5, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MAX_ANGLE_THRESHOLD_RAD:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_5

    .line 2530
    sget v5, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MAX_ANGLE_THRESHOLD_RAD:F

    sget v6, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MIN_ANGLE_THRESHOLD_RAD:F

    sub-float/2addr v5, v6

    .line 2531
    const/high16 v6, 0x3f800000    # 1.0f

    sget v7, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MIN_ANGLE_THRESHOLD_RAD:F

    sub-float/2addr v4, v7

    div-float/2addr v4, v5

    sub-float v4, v6, v4

    .line 2532
    const/4 v5, 0x0

    add-float/2addr v5, v4

    iput v5, v3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->alpha:F

    .line 2535
    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v5

    const v5, 0x3ecccccd    # 0.4f

    add-float/2addr v4, v5

    iput v4, v3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->scale:F

    goto/16 :goto_2

    .line 2540
    :cond_5
    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->alpha:F

    .line 2541
    const v4, 0x3ecccccd    # 0.4f

    iput v4, v3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->scale:F

    goto/16 :goto_2

    .line 379
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animateAvailableTargets:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawAllTargets:Z

    if-nez v3, :cond_8

    .line 380
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetAlpha:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 381
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animateFirstTargetFadeIn:Z

    if-eqz v3, :cond_b

    .line 382
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetAlpha:F

    sub-float/2addr v4, v5

    const v5, 0x3c23d70a    # 0.01f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetAlpha:F

    .line 383
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetAlpha:F

    const v4, 0x3f666666    # 0.9f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 384
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-nez v3, :cond_9

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetStartTime:J

    .line 398
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetAlpha:F

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    .line 399
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetAlpha:F

    .line 400
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animateAvailableTargets:Z

    :cond_8
    move v3, v2

    goto/16 :goto_3

    .line 388
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetStartTime:J

    sub-long/2addr v4, v8

    long-to-double v4, v4

    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v8

    .line 389
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v4, v8

    if-lez v3, :cond_a

    .line 390
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animateFirstTargetFadeIn:Z

    .line 392
    :cond_a
    const v3, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetAlpha:F

    goto :goto_5

    .line 396
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetAlpha:F

    const v4, 0x3f7c28f6    # 0.985f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetAlpha:F

    goto :goto_5

    .line 428
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    const/4 v6, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V

    goto/16 :goto_1

    .line 432
    :cond_d
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3717
    :try_start_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    .line 3718
    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    add-float/2addr v2, v3

    .line 3720
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->reticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    if-eqz v3, :cond_2

    .line 3721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->reticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Lcom/google/android/apps/lightcycle/panorama/Reticle;->draw([FF)V
    :try_end_4
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 3718
    :cond_e
    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_6
.end method

.method public final finalizeHitTargets()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->getTargets()[Lcom/google/android/apps/lightcycle/panorama/NewTarget;

    move-result-object v3

    .line 281
    const/16 v0, 0x10

    new-array v4, v0, [F

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 283
    if-nez v3, :cond_1

    .line 290
    :cond_0
    return-void

    .line 286
    :cond_1
    array-length v5, v3

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v3, v1

    .line 287
    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->orientation:[F

    invoke-static {v6, v2, v4}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setRotationTranspose([FI[F)V

    .line 288
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targets:Ljava/util/Map;

    iget v0, v0, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->key:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final freeGLMemory()V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->freeGLMemory()V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->freeGLMemory()V

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->freeGLMemory()V

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-eqz v0, :cond_3

    .line 778
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->freeGLMemory()V

    .line 780
    :cond_3
    return-void
.end method

.method public final init(IILcom/google/android/apps/lightcycle/panorama/Reticle;)V
    .locals 7

    .prologue
    const v2, 0x7f02014c

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 215
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 216
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 217
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->context:Landroid/content/Context;

    .line 218
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    :cond_0
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    .line 227
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->context:Landroid/content/Context;

    const v2, 0x7f02014b

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    .line 231
    :try_start_0
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    .line 232
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 248
    int-to-float v0, p1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    .line 249
    int-to-float v0, p2

    div-float/2addr v0, v5

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->identityTransform:[F

    invoke-static {v0, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 253
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->reticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    .line 254
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method public final initWithRotation([F)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->reset()V

    .line 271
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->initTargets([F)[Lcom/google/android/apps/lightcycle/panorama/NewTarget;

    move-result-object v2

    .line 1491
    if-eqz v2, :cond_0

    .line 1492
    array-length v3, v2

    move v0, v1

    .line 1493
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1494
    const/16 v4, 0x10

    new-array v4, v4, [F

    .line 1495
    aget-object v5, v2, v0

    iget-object v5, v5, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->orientation:[F

    invoke-static {v5, v1, v4}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setRotationTranspose([FI[F)V

    .line 1496
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targets:Ljava/util/Map;

    aget-object v6, v2, v0

    iget v6, v6, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->key:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1500
    :cond_0
    iput-boolean v7, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animateAvailableTargets:Z

    .line 1501
    iput-boolean v7, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animateFirstTargetFadeIn:Z

    .line 1502
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetAlpha:F

    .line 1503
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->animatedTargetStartTime:J

    .line 273
    return-void
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 261
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->resetTargets()V

    .line 262
    return-void
.end method

.method public final setCaptureMode(I)V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawAllTargets:Z

    .line 455
    return-void

    .line 454
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setCurrentOrientation([F)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    .line 307
    return-void
.end method

.method public final setSensorReader(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 317
    return-void
.end method
