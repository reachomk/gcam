.class public final Lcom/google/android/gms/common/stats/zze;
.super Ljava/lang/Object;


# instance fields
.field private final zzayT:J

.field private final zzayU:I

.field private final zzayV:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/zze;->zzayT:J

    iput v2, p0, Lcom/google/android/gms/common/stats/zze;->zzayU:I

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zze;->zzayV:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/zze;->zzayT:J

    const/16 v0, 0x400

    iput v0, p0, Lcom/google/android/gms/common/stats/zze;->zzayU:I

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zze;->zzayV:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public final zzcN(Ljava/lang/String;)Ljava/lang/Long;
    .locals 8

    .prologue
    .line 0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/zze;->zzayT:J

    monitor-enter p0

    move-wide v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->zzayV:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/stats/zze;->zzayU:I

    if-lt v0, v1, :cond_2

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->zzayV:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->zzayV:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    cmp-long v0, v6, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->zzayV:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 0
    :cond_1
    const-wide/16 v0, 0x2

    div-long v0, v2, v0

    const-string v2, "ConnectionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "The max capacity "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/google/android/gms/common/stats/zze;->zzayU:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is not enough. Current durationThreshold is: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->zzayV:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzcO(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->zzayV:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
