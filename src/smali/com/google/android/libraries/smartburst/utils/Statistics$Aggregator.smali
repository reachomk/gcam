.class public final Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/utils/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aggregator"
.end annotation


# instance fields
.field private mCount:I

.field private mMax:D

.field private mMean:D

.field private mMin:D

.field private mVar:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMin:D

    .line 135
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMax:D

    .line 136
    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMean:D

    .line 137
    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mVar:D

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mCount:I

    return-void
.end method


# virtual methods
.method public final add(D)Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;
    .locals 7

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMax:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 148
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMax:D

    .line 150
    :cond_0
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMin:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 151
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMin:D

    .line 153
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mCount:I

    .line 154
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMean:D

    sub-double v0, p1, v0

    .line 155
    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMean:D

    iget v4, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mCount:I

    int-to-double v4, v4

    div-double v4, v0, v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMean:D

    .line 156
    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mVar:D

    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMean:D

    sub-double v4, p1, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mVar:D

    .line 157
    return-object p0
.end method

.method public final build()Lcom/google/android/libraries/smartburst/utils/Statistics;
    .locals 10

    .prologue
    .line 170
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mCount:I

    if-nez v0, :cond_0

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    .line 171
    :goto_0
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/Statistics;

    iget v1, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mCount:I

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMin:D

    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMax:D

    iget-wide v6, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mMean:D

    invoke-direct/range {v0 .. v9}, Lcom/google/android/libraries/smartburst/utils/Statistics;-><init>(IDDDD)V

    return-object v0

    .line 170
    :cond_0
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mVar:D

    iget v2, p0, Lcom/google/android/libraries/smartburst/utils/Statistics$Aggregator;->mCount:I

    int-to-double v2, v2

    div-double v8, v0, v2

    goto :goto_0
.end method
