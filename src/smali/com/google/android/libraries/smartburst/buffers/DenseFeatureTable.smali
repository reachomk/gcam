.class public final Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;
.super Ljava/lang/Object;
.source "DenseFeatureTable.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/buffers/FeatureTable;


# instance fields
.field private final mAssignCounts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

.field private final mColumnCount:I

.field private final mFeatureOffsets:[I

.field private final mFeatureValues:Ljava/util/concurrent/atomic/AtomicIntegerArray;

.field private final mFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/FeatureType;",
            ">;"
        }
    .end annotation
.end field

.field private final mFirstFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFrameRate:F

.field private final mLastRows:Ljava/util/concurrent/atomic/AtomicIntegerArray;

.field private final mRowCount:I

.field private final mRowToTimeCoeff:J

.field private final mTimestampBase:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/util/EnumSet;IF)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/FeatureType;",
            ">;IF)V"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mTimestampBase:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFirstFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 166
    invoke-virtual {p1}, Ljava/util/EnumSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 167
    if-lez p2, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 170
    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, p3

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mRowToTimeCoeff:J

    .line 171
    iput p3, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFrameRate:F

    .line 174
    invoke-static {p1}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->getMaxFeatureIndex(Ljava/util/EnumSet;)I

    move-result v3

    .line 175
    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatureOffsets:[I

    .line 176
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatureOffsets:[I

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    .line 178
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 179
    iget-object v5, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatureOffsets:[I

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->id()I

    move-result v6

    aput v1, v5, v6

    .line 180
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->length()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 181
    goto :goto_2

    :cond_0
    move v0, v2

    .line 166
    goto :goto_0

    :cond_1
    move v1, v2

    .line 167
    goto :goto_1

    .line 184
    :cond_2
    iput v1, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mColumnCount:I

    .line 185
    iput p2, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mRowCount:I

    .line 186
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatures:Ljava/util/EnumSet;

    .line 189
    iget v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mColumnCount:I

    mul-int/2addr v0, p2

    .line 190
    new-instance v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatureValues:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 196
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    add-int/lit8 v1, v3, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mLastRows:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 197
    :goto_3
    add-int/lit8 v0, v3, 0x1

    if-ge v2, v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mLastRows:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, v2, v7}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 202
    :cond_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    add-int/lit8 v1, v3, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mAssignCounts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 203
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;)Ljava/util/EnumSet;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatures:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;Lcom/google/android/libraries/smartburst/utils/FeatureType;II)Lcom/google/android/libraries/smartburst/utils/Feature;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->getFeatureAtRow(Lcom/google/android/libraries/smartburst/utils/FeatureType;II)Lcom/google/android/libraries/smartburst/utils/Feature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;I)J
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->timestampForRow(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private final backFillValues(IIIFLcom/google/android/libraries/smartburst/utils/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 389
    sub-int v0, p2, p1

    .line 391
    if-le v0, v1, :cond_2

    .line 393
    add-int/lit8 v1, v0, -0x1

    .line 394
    if-gez p1, :cond_1

    .line 395
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 396
    :goto_1
    if-ge v2, v1, :cond_2

    .line 397
    iget v3, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mColumnCount:I

    sub-int/2addr p3, v3

    .line 398
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatureValues:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v3, p3, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 388
    goto :goto_0

    .line 405
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 407
    iget v4, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mColumnCount:I

    mul-int/2addr v0, v4

    sub-int v0, p3, v0

    .line 408
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatureValues:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 410
    :goto_2
    if-ge v2, v1, :cond_2

    .line 411
    sub-int v4, v1, v2

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {p5, v0, p4, v4}, Lcom/google/android/libraries/smartburst/utils/Interpolator;->interpolate(FFF)F

    move-result v4

    .line 414
    iget v5, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mColumnCount:I

    sub-int/2addr p3, v5

    .line 415
    iget-object v5, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatureValues:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-virtual {v5, p3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 419
    :cond_2
    return-void
.end method

.method private final checkFeatureType(Lcom/google/android/libraries/smartburst/utils/FeatureType;)V
    .locals 4

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatures:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown feature \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': Feature is not tracked in table!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    return-void
.end method

.method private final getCellIndex(Lcom/google/android/libraries/smartburst/utils/FeatureType;I)I
    .locals 3

    .prologue
    .line 441
    iget v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mColumnCount:I

    mul-int/2addr v0, p2

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatureOffsets:[I

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->id()I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private final getFeatureAtRow(Lcom/google/android/libraries/smartburst/utils/FeatureType;II)Lcom/google/android/libraries/smartburst/utils/Feature;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 457
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->checkFeatureType(Lcom/google/android/libraries/smartburst/utils/FeatureType;)V

    .line 458
    if-gez p2, :cond_0

    move v1, v0

    .line 459
    :goto_0
    if-gez v1, :cond_1

    .line 461
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/Feature;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/utils/Feature;-><init>(Lcom/google/android/libraries/smartburst/utils/FeatureType;)V

    .line 468
    :goto_1
    return-object v0

    .line 458
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->length()I

    move-result v2

    new-array v2, v2, [F

    .line 464
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->getCellIndex(Lcom/google/android/libraries/smartburst/utils/FeatureType;I)I

    move-result v1

    .line 465
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 466
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatureValues:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    add-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v2, v0

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 468
    :cond_2
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/Feature;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/smartburst/utils/Feature;-><init>(Lcom/google/android/libraries/smartburst/utils/FeatureType;[F)V

    goto :goto_1
.end method

.method private static getMaxFeatureIndex(Ljava/util/EnumSet;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/FeatureType;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 447
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->id()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 448
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->id()I

    move-result v0

    :goto_1
    move v1, v0

    .line 450
    goto :goto_0

    .line 451
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private final rowForTimestamp(J)I
    .locals 7

    .prologue
    const-wide/16 v4, 0x2

    .line 422
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mTimestampBase:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 424
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 425
    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mRowToTimeCoeff:J

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mRowToTimeCoeff:J

    div-long/2addr v0, v2

    .line 426
    :goto_0
    long-to-int v0, v0

    .line 424
    return v0

    .line 426
    :cond_0
    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mRowToTimeCoeff:J

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mRowToTimeCoeff:J

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private final timestampForRow(I)J
    .locals 6

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mTimestampBase:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mRowToTimeCoeff:J

    int-to-long v4, p1

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final getAssignmentCount(Lcom/google/android/libraries/smartburst/utils/FeatureType;)I
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatures:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mAssignCounts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCapacity()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mRowCount:I

    return v0
.end method

.method public final getColumnCount()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mColumnCount:I

    return v0
.end method

.method public final getColumnValues(Lcom/google/android/libraries/smartburst/utils/FeatureType;)[Lcom/google/android/libraries/smartburst/utils/Feature;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->checkFeatureType(Lcom/google/android/libraries/smartburst/utils/FeatureType;)V

    .line 344
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mLastRows:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->id()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    .line 345
    if-gez v2, :cond_1

    .line 346
    new-array v0, v1, [Lcom/google/android/libraries/smartburst/utils/Feature;

    .line 352
    :cond_0
    return-object v0

    .line 348
    :cond_1
    add-int/lit8 v0, v2, 0x1

    new-array v0, v0, [Lcom/google/android/libraries/smartburst/utils/Feature;

    .line 349
    :goto_0
    if-gt v1, v2, :cond_0

    .line 350
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->getFeatureAtRow(Lcom/google/android/libraries/smartburst/utils/FeatureType;II)Lcom/google/android/libraries/smartburst/utils/Feature;

    move-result-object v3

    aput-object v3, v0, v1

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final getEarliestTimestamp()J
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mTimestampBase:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFeature(JLcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/utils/Feature;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->getRowForTimestamp(J)Lcom/google/android/libraries/smartburst/buffers/FeatureRow;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;->getFeature(Lcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/utils/Feature;

    move-result-object v0

    return-object v0
.end method

.method public final getFeatureCount()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatures:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    return v0
.end method

.method public final getFeatureTypes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/FeatureType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatures:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final getFrameRate()F
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFrameRate:F

    return v0
.end method

.method public final getLatestValidTimestamp()J
    .locals 8

    .prologue
    .line 322
    const-wide v0, 0x7fffffffffffffffL

    .line 323
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatures:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 324
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mLastRows:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->id()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v1

    .line 325
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 328
    invoke-direct {p0, v1}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->timestampForRow(I)J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->expirationNs()J

    move-result-wide v0

    add-long/2addr v0, v6

    .line 329
    cmp-long v5, v0, v2

    if-gez v5, :cond_2

    :goto_1
    move-wide v2, v0

    .line 332
    goto :goto_0

    .line 333
    :cond_1
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public final getNumRowsWithData()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 311
    move v0, v1

    move v2, v3

    .line 312
    :goto_0
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mLastRows:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 313
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mLastRows:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v4

    if-le v4, v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mLastRows:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    .line 312
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_1
    if-ne v2, v3, :cond_2

    :goto_1
    return v1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_1
.end method

.method public final getRowCount()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mRowCount:I

    return v0
.end method

.method public final getRowForTimestamp(J)Lcom/google/android/libraries/smartburst/buffers/FeatureRow;
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->getRowIterator(J)Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/buffers/FeatureRow;

    return-object v0
.end method

.method public final getRowIterator(J)Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;
    .locals 5

    .prologue
    .line 362
    new-instance v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mLastRows:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->rowForTimestamp(J)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable$RowIterator;-><init>(Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;Ljava/util/concurrent/atomic/AtomicIntegerArray;IB)V

    return-object v0
.end method

.method public final setFeatureValue(JLcom/google/android/libraries/smartburst/utils/Feature;)Z
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 239
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/smartburst/utils/Feature;->getType()Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->checkFeatureType(Lcom/google/android/libraries/smartburst/utils/FeatureType;)V

    .line 242
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFirstFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mTimestampBase:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 247
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/smartburst/utils/Feature;->getType()Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v8

    .line 248
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->id()I

    move-result v9

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->rowForTimestamp(J)I

    move-result v2

    .line 252
    iget v1, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mRowCount:I

    if-ge v2, v1, :cond_1

    if-gez v2, :cond_2

    .line 253
    :cond_1
    const-string v1, "DenseFeatureTable"

    .line 254
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/smartburst/utils/Feature;->getType()Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x46

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Table has overflowed or timestamp is too far in the past for feature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    return v0

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mLastRows:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v1

    .line 260
    if-lt v1, v2, :cond_3

    .line 261
    const-string v1, "DenseFeatureTable"

    .line 262
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/smartburst/utils/Feature;->getType()Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Target row is earlier than latest row for feature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_3
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mLastRows:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const v4, 0x7fffffff

    invoke-virtual {v3, v9, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v3

    if-nez v3, :cond_4

    .line 269
    const-string v1, "DenseFeatureTable"

    const-string v2, "Attempting to write to same feature column from multiple threads!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/smartburst/utils/Feature;->getType()Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->getCellIndex(Lcom/google/android/libraries/smartburst/utils/FeatureType;I)I

    move-result v10

    .line 275
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/libraries/smartburst/utils/Feature;->getValues()[F

    move-result-object v11

    move v6, v0

    .line 276
    :goto_1
    array-length v0, v11

    if-ge v6, v0, :cond_5

    .line 277
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatureValues:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    add-int v3, v10, v6

    aget v4, v11, v6

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 278
    add-int v3, v10, v6

    aget v4, v11, v6

    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->interpolator()Lcom/google/android/libraries/smartburst/utils/Interpolator;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->backFillValues(IIIFLcom/google/android/libraries/smartburst/utils/Interpolator;)V

    .line 276
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mAssignCounts:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->incrementAndGet(I)I

    .line 285
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mLastRows:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, v9, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    move v0, v7

    .line 286
    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 372
    const v0, 0x4e6e6b28    # 1.0E9f

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mRowToTimeCoeff:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 373
    const-string v1, ","

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mFeatures:Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 374
    const-string v2, "DenseFeatureTable[rows="

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;->mRowCount:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",features="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
