.class public Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;
.super Ljava/lang/Object;
.source "MotionStabilizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_HOMOGRAPHY_ERROR_TOLERANCE:F = 1.0E-7f

.field private static final GAUSSIAN_KERNEL:Z = true

.field private static final GAUSSIAN_STANDARD_DEVIATION:F = 30.0f

.field private static final INVALID_FRAME:I = -0x1

.field private static final SMOOTHING_FILTER_LENGTH:I = 0x5b

.field private static final TAG:Ljava/lang/String; = "MotionStabilizer"

.field private static final TRANSFORM_DIMENSION:I = 0x9


# instance fields
.field private final mContextBuffer:Ljava/nio/ByteBuffer;

.field private final mStabilizedTransforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 376
    const-string v0, "smartburst-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    .line 37
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->getContextLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mContextBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static createFrom(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;JJ)Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;
    .locals 9

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    cmp-long v0, p3, p1

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 70
    new-instance v3, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;

    invoke-direct {v3}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;-><init>()V

    .line 72
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createIdentityHomographyTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    .line 74
    invoke-interface {p0}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getEarliestTimestamp()J

    move-result-wide v4

    .line 73
    invoke-interface {p0, v4, v5}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getRowIterator(J)Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;

    move-result-object v4

    move-object v1, v0

    .line 75
    :cond_0
    :goto_1
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;->moreSamplesToFollow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;

    .line 77
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;->getTimestampNs()J

    move-result-wide v6

    cmp-long v2, v6, p1

    if-ltz v2, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;->getTimestampNs()J

    move-result-wide v6

    cmp-long v2, v6, p3

    if-gtz v2, :cond_3

    .line 83
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;->getTimestampNs()J

    move-result-wide v6

    sget-object v2, Lcom/google/android/libraries/smartburst/utils/FeatureType;->INTERFRAME_HOMOGRAPHY:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-interface {p0, v6, v7, v2}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getFeature(JLcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/utils/Feature;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/utils/Feature;->getValues()[F

    move-result-object v2

    .line 86
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createHomographyTransform([F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v2

    .line 87
    const v5, 0x33d6bf95    # 1.0E-7f

    invoke-virtual {v2, v1, v5}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->closeTo(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->isDegenerateHomography()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;->getTimestampNs()J

    move-result-wide v0

    invoke-virtual {v3, v2, v0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->addInterframeTransform(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;J)V

    :cond_1
    move-object v1, v2

    .line 92
    goto :goto_1

    .line 68
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->stabilizeTransforms()V

    .line 95
    return-object v3
.end method

.method private native getContextLength()I
.end method

.method private getNearestFrameAfter(J)I
    .locals 9

    .prologue
    .line 289
    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->getNearestFrameInTimeRange(JJJ)I

    move-result v0

    return v0
.end method

.method private getNearestFrameBefore(J)I
    .locals 9

    .prologue
    .line 285
    const-wide/high16 v4, -0x8000000000000000L

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->getNearestFrameInTimeRange(JJJ)I

    move-result v0

    return v0
.end method

.method private getNearestFrameInTimeRange(JJJ)I
    .locals 9

    .prologue
    .line 293
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 294
    const/4 v2, -0x1

    .line 295
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->getFrameCount()I

    move-result v4

    .line 296
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 297
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getTimestamp()J

    move-result-wide v6

    .line 298
    cmp-long v0, v6, p3

    if-ltz v0, :cond_1

    .line 300
    cmp-long v0, v6, p5

    if-gez v0, :cond_0

    .line 303
    sub-long v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    long-to-float v0, v6

    .line 304
    cmpg-float v5, v0, v3

    if-gez v5, :cond_1

    move v2, v0

    move v0, v1

    .line 296
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 309
    :cond_0
    return v2

    :cond_1
    move v0, v2

    move v2, v3

    goto :goto_1
.end method

.method private getStabilizedTransform(J)Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;
    .locals 11

    .prologue
    const/4 v2, -0x1

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->getNearestFrameBefore(J)I

    move-result v0

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->getNearestFrameAfter(J)I

    move-result v1

    .line 251
    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    .line 253
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    .line 256
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getTimestamp()J

    move-result-wide v4

    .line 257
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getTimestamp()J

    move-result-wide v6

    .line 258
    sub-long v8, v6, v4

    long-to-float v1, v8

    .line 259
    sub-long/2addr v6, p1

    long-to-float v2, v6

    div-float v6, v2, v1

    .line 260
    sub-long v4, p1, v4

    long-to-float v2, v4

    div-float v4, v2, v1

    .line 264
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getInterframeTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v1

    .line 265
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getInterframeTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v2

    .line 263
    invoke-static {v1, v6, v2, v4}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createBlend(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;FLcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v1

    .line 267
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getJitterTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v2

    .line 268
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getJitterTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v5

    .line 266
    invoke-static {v2, v6, v5, v4}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createBlend(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;FLcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v2

    .line 270
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getCompensationTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    .line 271
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getCompensationTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v3

    .line 269
    invoke-static {v0, v6, v3, v4}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createBlend(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;FLcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v3

    .line 272
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;-><init>(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;J)V

    .line 280
    :goto_0
    return-object v0

    .line 273
    :cond_0
    if-eq v0, v2, :cond_1

    .line 274
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    goto :goto_0

    .line 275
    :cond_1
    if-eq v1, v2, :cond_2

    .line 276
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    goto :goto_0

    .line 279
    :cond_2
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createIdentityHomographyTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v1

    .line 280
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    move-object v2, v1

    move-object v3, v1

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;-><init>(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;J)V

    goto :goto_0
.end method

.method private native stabilizationMotionFilteringFilterMotion(Ljava/nio/ByteBuffer;[F[F[F)V
.end method

.method private native stabilizationMotionFilteringSetUp(Ljava/nio/ByteBuffer;IZFI)V
.end method

.method private native stabilizationMotionFilteringTearDown(Ljava/nio/ByteBuffer;)V
.end method


# virtual methods
.method public addInterframeTransform(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;J)V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;-><init>(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;J)V

    .line 195
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public getCompensationTransformForFrame(I)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 1

    .prologue
    .line 138
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 139
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getCompensationTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompensationTransformForTimestamp(J)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->getStabilizedTransform(J)Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getCompensationTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInterframeTransformForFrame(I)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 1

    .prologue
    .line 114
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 115
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getInterframeTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterframeTransformForTimestamp(J)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->getStabilizedTransform(J)Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getInterframeTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    return-object v0
.end method

.method public getJitterTransformForFrame(I)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 1

    .prologue
    .line 126
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 127
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getJitterTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJitterTransformForTimestamp(J)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->getStabilizedTransform(J)Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getJitterTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v0

    return-object v0
.end method

.method public stabilizeTransforms()V
    .locals 11

    .prologue
    const/16 v10, 0x9

    const/4 v6, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->getFrameCount()I

    move-result v2

    .line 203
    if-gtz v2, :cond_1

    .line 245
    :cond_0
    return-void

    .line 208
    :cond_1
    mul-int/lit8 v0, v2, 0x9

    new-array v7, v0, [F

    .line 209
    mul-int/lit8 v0, v2, 0x9

    new-array v8, v0, [F

    .line 210
    mul-int/lit8 v0, v2, 0x9

    new-array v9, v0, [F

    move v1, v6

    .line 213
    :goto_0
    if-ge v1, v2, :cond_3

    .line 214
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->getInterframeTransform()Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v3

    move v0, v6

    .line 216
    :goto_1
    if-ge v0, v10, :cond_2

    .line 217
    mul-int/lit8 v4, v1, 0x9

    add-int/2addr v4, v0

    .line 218
    invoke-virtual {v3, v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->getValue(I)F

    move-result v5

    aput v5, v7, v4

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mContextBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    const/high16 v4, 0x41f00000    # 30.0f

    const/16 v5, 0x5b

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->stabilizationMotionFilteringSetUp(Ljava/nio/ByteBuffer;IZFI)V

    .line 226
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mContextBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v7, v8, v9}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->stabilizationMotionFilteringFilterMotion(Ljava/nio/ByteBuffer;[F[F[F)V

    .line 228
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mContextBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->stabilizationMotionFilteringTearDown(Ljava/nio/ByteBuffer;)V

    move v1, v6

    .line 231
    :goto_2
    if-ge v1, v2, :cond_0

    .line 232
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createIdentityArray()[F

    move-result-object v3

    .line 233
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createIdentityArray()[F

    move-result-object v4

    move v0, v6

    .line 234
    :goto_3
    if-ge v0, v10, :cond_4

    .line 235
    mul-int/lit8 v5, v1, 0x9

    add-int/2addr v5, v0

    aget v5, v9, v5

    aput v5, v3, v0

    .line 237
    mul-int/lit8 v5, v1, 0x9

    add-int/2addr v5, v0

    aget v5, v8, v5

    aput v5, v4, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    .line 241
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createHomographyTransform([F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v4

    .line 240
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->setJitterTransform(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->mStabilizedTransforms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;

    .line 243
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createHomographyTransform([F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v3

    .line 242
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer$StabilizedTransform;->setCompensationTransform(Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;)V

    .line 231
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
