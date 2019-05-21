.class public final Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;
.super Ljava/lang/Object;
.source "AUCFrameDropper.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/selection/FrameDropper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;,
        Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;,
        Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;
    }
.end annotation


# instance fields
.field private final mAllFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

.field private final mFrames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

.field private mMaxMotionSaliency:F

.field private mMotionFloor:F

.field private mMotionPowerMultiplier:F

.field private mMotionThreshold:F

.field private final mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFrames:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mAllFrames:Ljava/util/List;

    .line 100
    iput v3, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMotionThreshold:F

    .line 104
    iput v3, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMaxMotionSaliency:F

    .line 109
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMotionFloor:F

    .line 114
    iput v4, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMotionPowerMultiplier:F

    .line 122
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget v0, p1, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->thresholdMotionFraction:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 124
    iget v0, p1, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->smoothRadiusMs:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 125
    iget v0, p1, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->smoothSigmaMs:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 126
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    .line 127
    return-void

    :cond_0
    move v0, v2

    .line 123
    goto :goto_0

    :cond_1
    move v0, v2

    .line 124
    goto :goto_1

    :cond_2
    move v1, v2

    .line 125
    goto :goto_2
.end method

.method private static buildFrameListWithout(Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 785
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 786
    if-eq v0, p0, :cond_0

    .line 787
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 790
    :cond_1
    return-object v1
.end method

.method private final calculateAUCVariation(Ljava/util/List;)D
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 627
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 628
    :cond_0
    const-wide/16 v2, 0x0

    .line 661
    :cond_1
    :goto_0
    return-wide v2

    .line 632
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    if-nez v2, :cond_3

    .line 633
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "mLastFrame is null when frames is not empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    iget-wide v4, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    .line 637
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    .line 638
    add-int/lit8 v3, v6, -0x1

    .line 639
    add-int/lit8 v2, v6, 0x1

    int-to-double v8, v2

    div-double v8, v4, v8

    .line 640
    int-to-double v10, v3

    div-double v10, v4, v10

    .line 641
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    iget-wide v12, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    .line 642
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    iget-wide v14, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    sub-double/2addr v4, v14

    .line 645
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    iget-wide v14, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    iget-wide v0, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    int-to-double v2, v3

    div-double v2, v14, v2

    .line 648
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 649
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 653
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->calculateVariation(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->calculateVariation(D)D

    move-result-wide v4

    add-double/2addr v4, v2

    .line 654
    const/4 v2, 0x1

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_4

    .line 655
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    iget-wide v10, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    add-int/lit8 v2, v3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    iget-wide v12, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    sub-double/2addr v10, v12

    .line 656
    sub-double/2addr v10, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->calculateVariation(D)D

    move-result-wide v10

    add-double/2addr v4, v10

    .line 654
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 658
    :cond_4
    add-int/lit8 v2, v6, 0x1

    int-to-double v2, v2

    div-double v2, v4, v2

    .line 661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v4, v4, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->variationMethod:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;

    sget-object v5, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;->STDEV:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;

    if-ne v4, v5, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    goto/16 :goto_0
.end method

.method private calculateVariation(D)D
    .locals 5

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->variationMethod:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 678
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v1, v1, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->variationMethod:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized variation method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :pswitch_0
    mul-double v0, p1, p1

    .line 676
    :goto_0
    return-wide v0

    :pswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_0

    .line 671
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final detectRejectFrame()Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;
    .locals 5

    .prologue
    .line 445
    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFrames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 447
    iget-boolean v3, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->passedFilter:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_0

    iget v3, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->qualityScore:F

    iget v4, v1, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->qualityScore:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    :cond_0
    :goto_1
    move-object v1, v0

    .line 451
    goto :goto_0

    .line 452
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private final getBlurriestFrame()Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;
    .locals 7

    .prologue
    .line 609
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFrames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 610
    const/4 v2, 0x0

    .line 611
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 612
    if-eqz v2, :cond_0

    iget v5, v1, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->sharpnessScore:F

    iget v6, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->sharpnessScore:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    :cond_0
    :goto_1
    move-object v2, v1

    .line 615
    goto :goto_0

    .line 616
    :cond_1
    return-object v2

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method private final scoreStack(Ljava/util/List;DDD)D
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;",
            ">;DDD)D"
        }
    .end annotation

    .prologue
    .line 697
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 699
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v2, p2, p4

    add-double v2, v2, p6

    sub-double v8, v0, v2

    .line 702
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    .line 703
    const-wide/16 v4, 0x0

    .line 704
    const-wide/16 v2, 0x0

    .line 705
    const-wide/16 v0, 0x0

    .line 706
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v6, v4

    move-wide v4, v2

    move-wide v2, v0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 707
    iget v1, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->sharpnessScore:F

    float-to-double v12, v1

    add-double/2addr v6, v12

    .line 708
    iget v1, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->qualityScore:F

    float-to-double v12, v1

    add-double/2addr v4, v12

    .line 709
    iget v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->transformedMotionSaliency:F

    float-to-double v0, v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 710
    goto :goto_1

    .line 697
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 711
    :cond_1
    if-lez v10, :cond_2

    .line 712
    int-to-double v0, v10

    div-double/2addr v6, v0

    .line 713
    int-to-double v0, v10

    div-double/2addr v4, v0

    .line 714
    int-to-double v0, v10

    div-double/2addr v2, v0

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    if-nez v0, :cond_3

    .line 719
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mLastFrame is null when frames is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->variationMethod:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;

    sget-object v1, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;->VARIANCE:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;

    if-ne v0, v1, :cond_4

    .line 727
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    iget-wide v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    iget-object v10, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    iget-wide v10, v10, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    mul-double/2addr v0, v10

    .line 729
    :goto_2
    const-wide v10, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 731
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->calculateAUCVariation(Ljava/util/List;)D

    move-result-wide v10

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    mul-double/2addr v10, v12

    div-double v0, v10, v0

    .line 735
    mul-double v6, v6, p2

    mul-double v4, v4, p4

    add-double/2addr v4, v6

    mul-double v2, v2, p6

    add-double/2addr v2, v4

    mul-double/2addr v0, v8

    sub-double v0, v2, v0

    return-wide v0

    .line 728
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    iget-wide v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    goto :goto_2
.end method

.method private final selectWorstFrameWithObjFunc()Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;
    .locals 18

    .prologue
    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFrames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    const/4 v2, 0x0

    .line 774
    :goto_0
    return-object v2

    .line 751
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFrames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 754
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 755
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    goto :goto_0

    .line 758
    :cond_1
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 761
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    move-object v10, v11

    .line 762
    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/4 v3, 0x0

    move-object v13, v2

    :goto_1
    move/from16 v0, v17

    if-ge v3, v0, :cond_2

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v16, v3, 0x1

    move-object v12, v2

    check-cast v12, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 763
    invoke-static {v12, v11}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->buildFrameListWithout(Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->stackObjectiveSharpnessWeight:F

    float-to-double v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->stackObjectiveQualityWeight:F

    float-to-double v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->stackObjectiveMotionWeight:F

    float-to-double v8, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->scoreStack(Ljava/util/List;DDD)D

    move-result-wide v2

    .line 768
    cmpl-double v4, v2, v14

    if-ltz v4, :cond_3

    :goto_2
    move-object v13, v12

    move-wide v14, v2

    move/from16 v3, v16

    .line 773
    goto :goto_1

    :cond_2
    move-object v2, v13

    .line 774
    goto :goto_0

    :cond_3
    move-object v12, v13

    move-wide v2, v14

    goto :goto_2
.end method


# virtual methods
.method public final getAcceptedFrames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFrames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final onFrameDropped(J)V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->motionScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameDropped(J)V

    .line 269
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->sharpnessScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameDropped(J)V

    .line 270
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->qualityScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameDropped(J)V

    .line 274
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFrames:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void
.end method

.method public final onFrameInserted(J)V
    .locals 23

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    iget-wide v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->timestamp:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 198
    const-string v2, "AUCFrameDropper"

    const-string v3, "Invalid timestamp: new frame timestamp is smaller than older timestamp."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    return-void

    .line 207
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->motionScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameInserted(J)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->sharpnessScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameInserted(J)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->qualityScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameInserted(J)V

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->motionScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 216
    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F

    move-result v2

    const/4 v3, 0x0

    .line 215
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->sharpnessScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v7, v2, v3

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->qualityScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F

    move-result v8

    .line 224
    new-instance v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    const/4 v9, 0x1

    move-wide/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;-><init>(JFFFZ)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFrames:Ljava/util/Map;

    iget-wide v4, v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mAllFrames:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2462
    const v2, 0x3dcccccd    # 0.1f

    const v4, 0x3f7d70a4    # 0.99f

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x3d4ccccd    # 0.05f

    invoke-static {v2, v4, v5, v6}, Lcom/google/android/libraries/smartburst/utils/MathUtils;->calcSigmoidParams(FFFF)Lcom/google/android/libraries/smartburst/utils/MathUtils$SigmoidParams;

    .line 2463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mAllFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 2474
    const/4 v5, 0x0

    iput v5, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->beliefMotionBlur:F

    .line 2475
    iget v5, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->baseMotionSaliency:F

    iput v5, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->adjustedMotionSaliency:F

    goto :goto_1

    .line 2484
    :cond_1
    const/4 v2, 0x2

    new-array v14, v2, [I

    fill-array-data v14, :array_0

    .line 2485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mAllFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    .line 2486
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget v5, v5, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->smoothSigmaMs:F

    invoke-static {v2, v4, v5}, Lcom/google/android/libraries/smartburst/utils/MathUtils;->gaussian(FFF)F

    move-result v2

    float-to-double v12, v2

    .line 2487
    add-int/lit8 v2, v15, -0x1

    move v11, v2

    :goto_2
    if-ltz v11, :cond_5

    .line 2488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mAllFrames:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 2491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 2493
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget v5, v5, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->smoothRadiusMs:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_5

    .line 2497
    iget v4, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->adjustedMotionSaliency:F

    float-to-double v4, v4

    mul-double v6, v4, v12

    .line 2499
    const/4 v4, 0x0

    move v10, v4

    move-wide v8, v12

    :goto_4
    const/4 v4, 0x2

    if-ge v10, v4, :cond_4

    aget v16, v14, v10

    .line 2500
    add-int v4, v11, v16

    move v5, v4

    :goto_5
    if-ltz v5, :cond_3

    if-ge v5, v15, :cond_3

    .line 2501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mAllFrames:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 2502
    iget-wide v0, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->timestamp:J

    move-wide/from16 v18, v0

    iget-wide v0, v4, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->timestamp:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x49742400    # 1000000.0f

    div-float v17, v17, v18

    .line 2504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->smoothRadiusMs:F

    move/from16 v18, v0

    cmpl-float v18, v17, v18

    if-gtz v18, :cond_3

    .line 2507
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->smoothSigmaMs:F

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/google/android/libraries/smartburst/utils/MathUtils;->gaussian(FFF)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    .line 2508
    iget v4, v4, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->adjustedMotionSaliency:F

    float-to-double v0, v4

    move-wide/from16 v20, v0

    mul-double v20, v20, v18

    add-double v6, v6, v20

    .line 2509
    add-double v8, v8, v18

    .line 2500
    add-int v4, v5, v16

    move v5, v4

    goto :goto_5

    .line 2492
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    iget-wide v4, v4, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->timestamp:J

    iget-wide v6, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->timestamp:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x49742400    # 1000000.0f

    div-float/2addr v4, v5

    goto/16 :goto_3

    .line 2499
    :cond_3
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_4

    .line 2513
    :cond_4
    div-double v4, v6, v8

    double-to-float v4, v4

    iput v4, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->smoothedMotionSaliency:F

    .line 2487
    add-int/lit8 v2, v11, -0x1

    move v11, v2

    goto/16 :goto_2

    .line 2523
    :cond_5
    const v2, 0x358637bd    # 1.0E-6f

    .line 2524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mAllFrames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 2525
    iget v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->smoothedMotionSaliency:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v4, v2

    .line 2526
    goto :goto_6

    .line 2529
    :cond_6
    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMaxMotionSaliency:F

    .line 2530
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMaxMotionSaliency:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget v4, v4, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->thresholdMotionFraction:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMotionThreshold:F

    .line 2533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->transformedMotionFloorFraction:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMaxMotionSaliency:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMotionFloor:F

    .line 2536
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMaxMotionSaliency:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    .line 2537
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMaxMotionSaliency:F

    float-to-double v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget v6, v6, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->motionExponent:F

    sub-float/2addr v2, v6

    float-to-double v6, v2

    .line 2538
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMotionPowerMultiplier:F

    .line 2549
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mAllFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 2550
    iget v5, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->smoothedMotionSaliency:F

    .line 2581
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMotionThreshold:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMotionFloor:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 2582
    float-to-double v6, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget v5, v5, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->motionExponent:F

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMotionPowerMultiplier:F

    mul-float/2addr v5, v6

    .line 2550
    iput v5, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->transformedMotionSaliency:F

    goto :goto_8

    .line 2540
    :cond_7
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMotionPowerMultiplier:F

    .line 2541
    const-string v2, "AUCFrameDropper"

    const-string v4, "The max motion saliency must be a positive number!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3558
    :cond_8
    const/4 v2, 0x0

    .line 3559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mAllFrames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v2

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 3560
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    .line 3561
    if-eqz v4, :cond_9

    .line 3563
    iget-wide v6, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->timestamp:J

    iget-wide v8, v4, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->timestamp:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    .line 3566
    iget v8, v4, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->transformedMotionSaliency:F

    iget v9, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->transformedMotionSaliency:F

    add-float/2addr v8, v9

    float-to-double v8, v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 3568
    iget-wide v8, v4, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    add-double/2addr v6, v8

    iput-wide v6, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->motionIntegral:D

    :cond_9
    move-object v4, v2

    .line 3571
    goto :goto_9

    .line 257
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFirstFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    if-nez v2, :cond_b

    .line 258
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFirstFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 260
    :cond_b
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    goto/16 :goto_0

    .line 2484
    :array_0
    .array-data 4
        -0x1
        0x1
    .end array-data
.end method

.method public final reserveBestFrameForProcessing()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->motionScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->reset()V

    .line 292
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->qualityScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->reset()V

    .line 293
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->sharpnessScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->reset()V

    .line 297
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFrames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 298
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mAllFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 299
    iput-object v2, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFirstFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 300
    iput-object v2, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mLastFrame:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    .line 301
    iput v1, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMotionThreshold:F

    .line 302
    iput v1, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mMaxMotionSaliency:F

    .line 303
    return-void
.end method

.method public final selectFrameToDrop()J
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFrames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t drop frame from empty list."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFrames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mFrames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 189
    :goto_0
    return-wide v0

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->detectRejectFrame()Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_2

    .line 172
    iget-wide v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->timestamp:J

    goto :goto_0

    .line 1596
    :cond_2
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->getBlurriestFrame()Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    move-result-object v0

    .line 1597
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->sharpnessScore:F

    const/high16 v2, -0x3ee00000    # -10.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 177
    :goto_1
    if-eqz v0, :cond_4

    .line 182
    iget-wide v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->timestamp:J

    goto :goto_0

    .line 1597
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 186
    :cond_4
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->selectWorstFrameWithObjFunc()Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;

    move-result-object v0

    .line 189
    iget-wide v0, v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$FrameInfo;->timestamp:J

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 432
    const-string v0, "AUCFrameDropper[motion="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v1, v1, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->motionScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v2, v2, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->sharpnessScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;->mParams:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    iget-object v3, v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->qualityScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x25

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sharpness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motion-blur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
