.class public final Lcom/google/android/libraries/smartburst/utils/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;
    }
.end annotation


# instance fields
.field private final mCount:I

.field private final mMax:D

.field private final mMean:D

.field private final mMin:D

.field private final mVar:D


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/android/libraries/smartburst/utils/Statistics;->mCount:I

    .line 38
    iput-wide p2, p0, Lcom/google/android/libraries/smartburst/utils/Statistics;->mMin:D

    .line 39
    iput-wide p4, p0, Lcom/google/android/libraries/smartburst/utils/Statistics;->mMax:D

    .line 40
    iput-wide p6, p0, Lcom/google/android/libraries/smartburst/utils/Statistics;->mMean:D

    .line 41
    iput-wide p8, p0, Lcom/google/android/libraries/smartburst/utils/Statistics;->mVar:D

    .line 42
    return-void
.end method

.method public static forFloatValues([F)Lcom/google/android/libraries/smartburst/utils/Statistics;
    .locals 6

    .prologue
    .line 54
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v1, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;-><init>()V

    .line 56
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p0, v0

    .line 57
    float-to-double v4, v3

    invoke-virtual {v1, v4, v5}, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->add(D)Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->build()Lcom/google/android/libraries/smartburst/utils/Statistics;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final max()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics;->mMax:D

    return-wide v0
.end method

.method public final mean()D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics;->mMean:D

    return-wide v0
.end method

.method public final min()D
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics;->mMin:D

    return-wide v0
.end method

.method public final sampleCount()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics;->mCount:I

    return v0
.end method

.method public final variance()D
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics;->mVar:D

    return-wide v0
.end method
