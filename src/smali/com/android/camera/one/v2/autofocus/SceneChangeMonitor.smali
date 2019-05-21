.class public final Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "SceneChangeMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Ljava/lang/Runnable;

.field private final clock:Lcom/google/android/apps/camera/util/time/UtcClock;

.field private final countingDownState:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final evScrollingState:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final evScrollingStateUpdatable:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private previousEvScrollingState:Z

.field private previousSceneChange:Z

.field private timeStampEvScrollingState:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "SceneChangeMonitor"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/util/lifetime/AppLifetime;Lcom/google/android/apps/camera/util/time/UtcClock;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/util/lifetime/AppLifetime;",
            "Lcom/google/android/apps/camera/util/time/UtcClock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->previousSceneChange:Z

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->timeStampEvScrollingState:J

    .line 119
    new-instance v0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor$1;-><init>(Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->evScrollingStateUpdatable:Lcom/google/android/apps/camera/async/Updatable;

    .line 56
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->evScrollingState:Lcom/google/android/apps/camera/async/Observable;

    .line 57
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->countingDownState:Lcom/google/android/apps/camera/async/Observable;

    .line 58
    invoke-interface {p1}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->previousEvScrollingState:Z

    .line 59
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->clock:Lcom/google/android/apps/camera/util/time/UtcClock;

    .line 60
    invoke-interface {p3}, Lcom/android/camera/util/lifetime/AppLifetime;->getAppLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->evScrollingStateUpdatable:Lcom/google/android/apps/camera/async/Updatable;

    .line 61
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 60
    invoke-interface {p1, v1, v2}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->previousEvScrollingState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->previousEvScrollingState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;)J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->timeStampEvScrollingState:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;J)J
    .locals 1

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->timeStampEvScrollingState:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;)Lcom/google/android/apps/camera/util/time/UtcClock;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->clock:Lcom/google/android/apps/camera/util/time/UtcClock;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final clearCallback()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->callback:Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 80
    sget-object v0, Lcom/google/android/camera/experimental2016/ExperimentalKeys;->EXPERIMENTAL_CONTROL_AF_SCENE_CHANGE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    if-ne v0, v1, :cond_1

    .line 1093
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->previousSceneChange:Z

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->evScrollingState:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1101
    sget-object v0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->TAG:Ljava/lang/String;

    const-string v2, "onSceneChanged while scrolling ev comp, ignoring"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    :cond_0
    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->previousSceneChange:Z

    .line 84
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 1104
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->countingDownState:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1105
    sget-object v0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->TAG:Ljava/lang/String;

    const-string v2, "onSceneChanged while counting down, ignoring"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1108
    :cond_3
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->clock:Lcom/google/android/apps/camera/util/time/UtcClock;

    .line 2023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1108
    iget-wide v4, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->timeStampEvScrollingState:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    .line 1109
    sget-object v0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->TAG:Ljava/lang/String;

    const-string v2, "onSceneChanged while waiting for expiration of last scrolling ev comp, ignoring"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1112
    :cond_4
    sget-object v0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->TAG:Ljava/lang/String;

    const-string v2, "onSceneChanged"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->callback:Ljava/lang/Runnable;

    .line 1114
    if-eqz v0, :cond_0

    .line 1115
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public final setCallback(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->callback:Ljava/lang/Runnable;

    .line 69
    return-void
.end method
