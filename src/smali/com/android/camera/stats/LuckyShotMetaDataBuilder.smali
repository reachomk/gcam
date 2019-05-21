.class public Lcom/android/camera/stats/LuckyShotMetaDataBuilder;
.super Ljava/lang/Object;
.source "LuckyShotMetaDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final luckyShotFrameInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final metricTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;",
            ">;"
        }
    .end annotation
.end field

.field private final nanosecondClock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

.field private scoreCalculations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;",
            ">;"
        }
    .end annotation
.end field

.field private timestampCloseLuckyShotSession:J

.field private timestampDoneLuckyShotSession:J

.field private timestampStartLuckyShotSession:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->timestampStartLuckyShotSession:J

    .line 33
    iput-wide v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->timestampCloseLuckyShotSession:J

    .line 34
    iput-wide v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->timestampDoneLuckyShotSession:J

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->lock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->luckyShotFrameInfo:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->metricTypes:Ljava/util/List;

    .line 87
    iput-object p1, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->nanosecondClock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    .line 88
    return-void
.end method

.method private static getScoringType(Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;)I
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 121
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 123
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addLuckyShotFrameInfoToBurst(Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;)V
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->build()Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/android/camera/stats/LuckyShotFrameInfoBuilder;->getMetricType()Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 140
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->luckyShotFrameInfo:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->metricTypes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addScoreCalculation(Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;)V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->scoreCalculations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->scoreCalculations:Ljava/util/List;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->scoreCalculations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public build()Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    new-instance v2, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;

    invoke-direct {v2}, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;-><init>()V

    .line 152
    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->luckyShotFrameInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->metricTypes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->metricTypes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;

    invoke-virtual {v0}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;->getValue()I

    move-result v0

    iput v0, v2, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->scoringMetricType:I

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->luckyShotFrameInfo:Ljava/util/List;

    iget-object v3, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->luckyShotFrameInfo:Ljava/util/List;

    .line 158
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    iput-object v0, v2, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->analyzedFrames:[Lcom/google/common/logging/nano/eventprotos$LuckyShotFrameInfo;

    .line 160
    monitor-exit v1

    return-object v2

    .line 155
    :cond_0
    sget-object v0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;->UNKNOWN:Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;

    invoke-virtual {v0}, Lcom/android/camera/stats/LuckyShotMetaDataBuilder$MetricType;->getValue()I

    move-result v0

    iput v0, v2, Lcom/google/common/logging/nano/eventprotos$LuckyShotMetaData;->scoringMetricType:I

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLuckyShotScoreCalculations()[Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->scoreCalculations:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->scoreCalculations:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->scoreCalculations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/logging/nano/eventprotos$LuckyShotScoreCalculation;

    monitor-exit v1

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTimestampCloseLuckyShotSession()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->timestampCloseLuckyShotSession:J

    return-wide v0
.end method

.method public getTimestampDoneLuckyShotSession()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->timestampDoneLuckyShotSession:J

    return-wide v0
.end method

.method public getTimestampStartLuckyShotSession()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->timestampStartLuckyShotSession:J

    return-wide v0
.end method

.method public markCloseSession()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->nanosecondClock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->timestampCloseLuckyShotSession:J

    .line 96
    return-void
.end method

.method public markSelectionDone()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->nanosecondClock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->timestampDoneLuckyShotSession:J

    .line 100
    return-void
.end method

.method public markStartSession()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->nanosecondClock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/LuckyShotMetaDataBuilder;->timestampStartLuckyShotSession:J

    .line 92
    return-void
.end method
