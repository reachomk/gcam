.class public Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;
.super Ljava/lang/Object;
.source "Timing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/util/Timing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field count:I

.field latest:J

.field max:J

.field min:J

.field start_time:J

.field sum:J


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->count:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->sum:J

    .line 26
    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->min:J

    .line 27
    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->max:J

    .line 28
    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->start_time:J

    .line 29
    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->latest:J

    .line 30
    return-void
.end method


# virtual methods
.method getAverage()D
    .locals 4

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->count:I

    if-eqz v0, :cond_0

    .line 33
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->sum:J

    long-to-double v0, v0

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->count:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 35
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->count:I

    return v0
.end method

.method getMax()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->max:J

    return-wide v0
.end method

.method getMin()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->min:J

    return-wide v0
.end method
