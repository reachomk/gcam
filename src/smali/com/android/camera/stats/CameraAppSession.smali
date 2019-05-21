.class public Lcom/android/camera/stats/CameraAppSession;
.super Lcom/android/camera/stats/InstrumentationSession;
.source "CameraAppSession.java"


# static fields
.field private static INSTANCE:Lcom/android/camera/stats/CameraAppSession;


# instance fields
.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private appOnCreateEndNs:J

.field private appOnCreateStartNs:J

.field private processStartDurationMs:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;Lcom/android/camera/util/ApiHelper;)V
    .locals 2

    .prologue
    .line 65
    const-string v0, "CameraApp"

    invoke-direct {p0, p1, v0}, Lcom/android/camera/stats/InstrumentationSession;-><init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;Ljava/lang/String;)V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/stats/CameraAppSession;->processStartDurationMs:J

    .line 66
    iput-object p2, p0, Lcom/android/camera/stats/CameraAppSession;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 67
    return-void
.end method

.method public static instance()Lcom/android/camera/stats/CameraAppSession;
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/android/camera/stats/CameraAppSession;->INSTANCE:Lcom/android/camera/stats/CameraAppSession;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/android/camera/stats/CameraAppSession;

    new-instance v1, Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-direct {v1}, Lcom/google/android/apps/camera/util/time/NanosecondClock;-><init>()V

    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/stats/CameraAppSession;-><init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;Lcom/android/camera/util/ApiHelper;)V

    sput-object v0, Lcom/android/camera/stats/CameraAppSession;->INSTANCE:Lcom/android/camera/stats/CameraAppSession;

    .line 18
    :cond_0
    sget-object v0, Lcom/android/camera/stats/CameraAppSession;->INSTANCE:Lcom/android/camera/stats/CameraAppSession;

    return-object v0
.end method

.method public static provider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/CameraAppSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/android/camera/stats/CameraAppSession$1;

    invoke-direct {v0}, Lcom/android/camera/stats/CameraAppSession$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAppOnCreateEnd()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/camera/stats/CameraAppSession;->appOnCreateEndNs:J

    return-wide v0
.end method

.method public getAppOnCreateStart()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/android/camera/stats/CameraAppSession;->appOnCreateStartNs:J

    return-wide v0
.end method

.method public getProcessStartDurationMs()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/camera/stats/CameraAppSession;->processStartDurationMs:J

    return-wide v0
.end method

.method public recordAppOnCreateEnd()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/stats/CameraAppSession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CameraAppSession;->appOnCreateEndNs:J

    .line 47
    return-void
.end method

.method public recordAppOnCreateStart()V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/stats/CameraAppSession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/CameraAppSession;->appOnCreateStartNs:J

    .line 39
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isNOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Landroid/os/Process;->getStartElapsedRealtime()J

    move-result-wide v0

    .line 41
    iget-object v2, p0, Lcom/android/camera/stats/CameraAppSession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/stats/CameraAppSession;->processStartDurationMs:J

    .line 43
    :cond_0
    return-void
.end method
