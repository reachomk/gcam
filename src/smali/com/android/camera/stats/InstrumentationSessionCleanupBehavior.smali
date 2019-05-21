.class public Lcom/android/camera/stats/InstrumentationSessionCleanupBehavior;
.super Ljava/lang/Object;
.source "InstrumentationSessionCleanupBehavior.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnDestroy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lcom/android/camera/stats/Instrumentation;->instance()Lcom/android/camera/stats/Instrumentation;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/camera/stats/Instrumentation;->cameraActivity()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/InstrumentationSession;

    .line 22
    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSession;->close()V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/stats/Instrumentation;->cameraDevice()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/InstrumentationSession;

    .line 25
    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSession;->close()V

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/stats/Instrumentation;->cameraChange()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/InstrumentationSession;

    .line 28
    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSession;->close()V

    goto :goto_2

    .line 30
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/stats/Instrumentation;->captureSession()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/InstrumentationSession;

    .line 31
    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSession;->close()V

    goto :goto_3

    .line 33
    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/stats/Instrumentation;->modeSwitch()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/InstrumentationSession;

    .line 34
    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSession;->close()V

    goto :goto_4

    .line 36
    :cond_4
    invoke-virtual {v1}, Lcom/android/camera/stats/Instrumentation;->jankStats()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/InstrumentationSession;

    .line 37
    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSession;->close()V

    goto :goto_5

    .line 39
    :cond_5
    invoke-virtual {v1}, Lcom/android/camera/stats/Instrumentation;->viewfinder()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/InstrumentationSession;

    .line 40
    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSession;->close()V

    goto :goto_6

    .line 42
    :cond_6
    invoke-virtual {v1}, Lcom/android/camera/stats/Instrumentation;->oneCamera()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/InstrumentationSession;

    .line 43
    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSession;->close()V

    goto :goto_7

    .line 45
    :cond_7
    invoke-virtual {v1}, Lcom/android/camera/stats/Instrumentation;->burstStats()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/InstrumentationSession;

    .line 46
    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSession;->close()V

    goto :goto_8

    .line 48
    :cond_8
    return-void
.end method
