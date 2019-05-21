.class final Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;
.super Lcom/google/android/apps/camera/async/Lifetime;
.source "TwoStageShutdown.java"


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final preShutdownTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/behavior/Behavior;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;->preShutdownTasks:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/lifecycle/TwoStageShutdown;->preShutdownTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/behavior/Behavior;

    .line 38
    invoke-interface {v0}, Lcom/android/camera/behavior/Behavior;->run()V

    goto :goto_1

    .line 40
    :cond_1
    invoke-super {p0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    goto :goto_0
.end method
