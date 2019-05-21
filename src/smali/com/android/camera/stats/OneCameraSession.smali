.class public Lcom/android/camera/stats/OneCameraSession;
.super Lcom/android/camera/stats/InstrumentationSession;
.source "OneCameraSession.java"


# instance fields
.field private oneCameraCreateNs:J

.field private oneCameraCreatedNs:J

.field private oneCameraInitNs:J

.field private oneCameraStartNs:J

.field private oneCameraStartedNs:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;)V
    .locals 1

    .prologue
    .line 25
    const-string v0, "OneCameraSession"

    invoke-direct {p0, p1, v0}, Lcom/android/camera/stats/InstrumentationSession;-><init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static provider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/OneCameraSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/android/camera/stats/OneCameraSession$1;

    invoke-direct {v0}, Lcom/android/camera/stats/OneCameraSession$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getOneCameraCreateNs()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraCreateNs:J

    return-wide v0
.end method

.method public getOneCameraCreatedNs()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraCreatedNs:J

    return-wide v0
.end method

.method public getOneCameraPrepareNs()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraInitNs:J

    return-wide v0
.end method

.method public getOneCameraStartNs()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraStartNs:J

    return-wide v0
.end method

.method public getOneCameraStartedNs()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraStartedNs:J

    return-wide v0
.end method

.method public recordOneCameraCreate()V
    .locals 7

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraCreateNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Accidental session reuse."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/stats/OneCameraSession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraCreateNs:J

    .line 42
    const-string v1, "OneCamera Initialize"

    iget-wide v2, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraInitNs:J

    const-string v4, "OneCamera Create"

    iget-wide v5, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraCreateNs:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/stats/OneCameraSession;->debug(Ljava/lang/String;JLjava/lang/String;J)V

    .line 43
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordOneCameraCreated()V
    .locals 6

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraCreatedNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Accidental session reuse."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/stats/OneCameraSession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraCreatedNs:J

    .line 48
    const-string v1, "OneCamera Created"

    iget-wide v2, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraCreateNs:J

    iget-wide v4, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraCreatedNs:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/OneCameraSession;->debug(Ljava/lang/String;JJ)V

    .line 49
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordOneCameraPrepare()V
    .locals 4

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraInitNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Accidental session reuse."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/stats/OneCameraSession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraInitNs:J

    .line 37
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordOneCameraStart()V
    .locals 7

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraStartNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Accidental session reuse."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/stats/OneCameraSession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraStartNs:J

    .line 54
    const-string v1, "OneCamera Created"

    iget-wide v2, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraCreatedNs:J

    const-string v4, "OneCamera Start"

    iget-wide v5, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraStartNs:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/stats/OneCameraSession;->debug(Ljava/lang/String;JLjava/lang/String;J)V

    .line 55
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordOneCameraStarted()V
    .locals 6

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraStartedNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Accidental session reuse."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/android/camera/stats/OneCameraSession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraStartedNs:J

    .line 60
    const-string v1, "OneCamera Started"

    iget-wide v2, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraStartNs:J

    iget-wide v4, p0, Lcom/android/camera/stats/OneCameraSession;->oneCameraStartedNs:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/OneCameraSession;->debug(Ljava/lang/String;JJ)V

    .line 61
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
