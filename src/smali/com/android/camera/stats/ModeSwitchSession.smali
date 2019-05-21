.class public Lcom/android/camera/stats/ModeSwitchSession;
.super Lcom/android/camera/stats/InstrumentationSession;
.source "ModeSwitchSession.java"


# instance fields
.field private modeSwitchEndNs:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;)V
    .locals 1

    .prologue
    .line 40
    const-string v0, "ModeSwitch"

    invoke-direct {p0, p1, v0}, Lcom/android/camera/stats/InstrumentationSession;-><init>(Lcom/google/android/apps/camera/util/time/NanosecondClock;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static provider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/ModeSwitchSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lcom/android/camera/stats/ModeSwitchSession$1;

    invoke-direct {v0}, Lcom/android/camera/stats/ModeSwitchSession$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getModeSwitchEndNs()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/camera/stats/ModeSwitchSession;->modeSwitchEndNs:J

    return-wide v0
.end method

.method public getModeSwitchStartNs()J
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/camera/stats/ModeSwitchSession;->getCreationTimeNs()J

    move-result-wide v0

    return-wide v0
.end method

.method public recordModeSwitchEnd()V
    .locals 6

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/stats/ModeSwitchSession;->clock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNN8QBDCKNKIRJKCLP7COBC8DM6UORB7C______:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/ModeSwitchSession;->modeSwitchEndNs:J

    .line 26
    const-string v1, "Mode Switch"

    invoke-virtual {p0}, Lcom/android/camera/stats/ModeSwitchSession;->getCreationTimeNs()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/stats/ModeSwitchSession;->modeSwitchEndNs:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/ModeSwitchSession;->debug(Ljava/lang/String;JJ)V

    .line 27
    return-void
.end method
