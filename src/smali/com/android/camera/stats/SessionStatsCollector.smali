.class public Lcom/android/camera/stats/SessionStatsCollector;
.super Ljava/lang/Object;
.source "SessionStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/stats/SessionStatsCollector$Singleton;
    }
.end annotation


# static fields
.field private static final DEBUG_LOGGING:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private afCount:I

.field private afCountFail:I

.field private afCountManual:I

.field private afCountSuccess:I

.field private afOnDuration:F

.field private afScanningDuration:F

.field private faceCountAverage:F

.field private faceDetectedDuration:F

.field private faceScanDuration:F

.field private startTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "SessionStatsCollector"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/stats/SessionStatsCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountSuccess:I

    .line 37
    iput v1, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountFail:I

    .line 38
    iput v1, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountManual:I

    .line 46
    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->faceScanDuration:F

    .line 47
    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->faceDetectedDuration:F

    .line 48
    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->faceCountAverage:F

    return-void
.end method

.method public static instance()Lcom/android/camera/stats/SessionStatsCollector;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector$Singleton;->access$000()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized logStats()V
    .locals 0

    .prologue
    .line 89
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private logStatsAndReset()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/stats/SessionStatsCollector;->logStats()V

    .line 96
    invoke-direct {p0}, Lcom/android/camera/stats/SessionStatsCollector;->resetStats()V

    .line 97
    return-void
.end method

.method private declared-synchronized printStats()V
    .locals 4

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/stats/SessionStatsCollector;->afOnDuration:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "mAfOnDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/stats/SessionStatsCollector;->afScanningDuration:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "mAfScanningDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "mAfCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountSuccess:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "mAfCountSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountFail:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "mAfCountFail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountManual:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "mAfCountManual = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/stats/SessionStatsCollector;->faceScanDuration:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "mFaceScanDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/stats/SessionStatsCollector;->faceDetectedDuration:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "mFaceDetectedDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/stats/SessionStatsCollector;->faceCountAverage:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "mFaceCountAverage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetStats()V
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/stats/SessionStatsCollector;->TAG:Ljava/lang/String;

    const-string v1, "Session start."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->afOnDuration:F

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->afScanningDuration:F

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCount:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountSuccess:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountFail:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountManual:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->faceScanDuration:F

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->faceDetectedDuration:F

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->faceCountAverage:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized autofocusActive(Z)V
    .locals 0

    .prologue
    .line 131
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized autofocusManualTrigger()V
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountManual:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountManual:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized autofocusMoving(Z)V
    .locals 0

    .prologue
    .line 155
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized autofocusResult(Z)V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 142
    :try_start_0
    iget v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountSuccess:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountSuccess:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountFail:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/stats/SessionStatsCollector;->afCountFail:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized faceScanActive(Z)V
    .locals 0

    .prologue
    .line 120
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized previewActive(Z)V
    .locals 0

    .prologue
    .line 109
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sessionActive(Z)V
    .locals 0

    .prologue
    .line 166
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
