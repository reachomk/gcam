.class public final Lcom/android/camera/module/capture/CaptureButtonReadiness;
.super Ljava/lang/Object;
.source "CaptureButtonReadiness.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Observable;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Observable",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/google/android/apps/camera/async/SafeCloseable;"
    }
.end annotation


# instance fields
.field private burstReadiness:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private burstReadinessClosable:Lcom/google/android/apps/camera/async/SafeCloseable;

.field private cameraReadiness:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private cameraReadinessClosable:Lcom/google/android/apps/camera/async/SafeCloseable;

.field private final internalExecutor:Ljava/util/concurrent/Executor;

.field private isClosed:Z

.field private final readiness:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/camera/module/capture/CaptureButtonReadiness;-><init>(Ljava/util/concurrent/Executor;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v2, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->isClosed:Z

    .line 45
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->readiness:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 46
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->internalExecutor:Ljava/util/concurrent/Executor;

    .line 47
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->addCameraReadinessCallback(Lcom/google/android/apps/camera/async/Observable;)V

    .line 48
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->addBurstReadinessCallback(Lcom/google/android/apps/camera/async/Observable;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/capture/CaptureButtonReadiness;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->isClosed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/module/capture/CaptureButtonReadiness;Z)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->isClosed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/capture/CaptureButtonReadiness;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->cameraReadinessClosable:Lcom/google/android/apps/camera/async/SafeCloseable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/capture/CaptureButtonReadiness;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->addCameraReadinessCallback(Lcom/google/android/apps/camera/async/Observable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/module/capture/CaptureButtonReadiness;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->burstReadinessClosable:Lcom/google/android/apps/camera/async/SafeCloseable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/capture/CaptureButtonReadiness;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->addBurstReadinessCallback(Lcom/google/android/apps/camera/async/Observable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/module/capture/CaptureButtonReadiness;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->readiness:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/capture/CaptureButtonReadiness;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->updateState()V

    return-void
.end method

.method private final addBurstReadinessCallback(Lcom/google/android/apps/camera/async/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->burstReadiness:Lcom/google/android/apps/camera/async/Observable;

    .line 135
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->burstReadinessClosable:Lcom/google/android/apps/camera/async/SafeCloseable;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->burstReadinessClosable:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 138
    :cond_0
    new-instance v0, Lcom/android/camera/module/capture/CaptureButtonReadiness$5;

    invoke-direct {v0, p0}, Lcom/android/camera/module/capture/CaptureButtonReadiness$5;-><init>(Lcom/android/camera/module/capture/CaptureButtonReadiness;)V

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->internalExecutor:Ljava/util/concurrent/Executor;

    .line 139
    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->burstReadinessClosable:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 147
    return-void
.end method

.method private final addCameraReadinessCallback(Lcom/google/android/apps/camera/async/Observable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->cameraReadiness:Lcom/google/android/apps/camera/async/Observable;

    .line 119
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->cameraReadinessClosable:Lcom/google/android/apps/camera/async/SafeCloseable;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->cameraReadinessClosable:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->cameraReadiness:Lcom/google/android/apps/camera/async/Observable;

    new-instance v1, Lcom/android/camera/module/capture/CaptureButtonReadiness$4;

    invoke-direct {v1, p0}, Lcom/android/camera/module/capture/CaptureButtonReadiness$4;-><init>(Lcom/android/camera/module/capture/CaptureButtonReadiness;)V

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->internalExecutor:Ljava/util/concurrent/Executor;

    .line 123
    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->cameraReadinessClosable:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 131
    return-void
.end method

.method private final updateState()V
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->readiness:Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->cameraReadiness:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->burstReadiness:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 151
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/apps/camera/async/SafeCloseable;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->readiness:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/camera/async/ConcurrentState;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->internalExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/module/capture/CaptureButtonReadiness$3;

    invoke-direct {v1, p0}, Lcom/android/camera/module/capture/CaptureButtonReadiness$3;-><init>(Lcom/android/camera/module/capture/CaptureButtonReadiness;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public final get()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->readiness:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final setBurstReadiness(Lcom/google/android/apps/camera/async/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->internalExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/module/capture/CaptureButtonReadiness$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/capture/CaptureButtonReadiness$2;-><init>(Lcom/android/camera/module/capture/CaptureButtonReadiness;Lcom/google/android/apps/camera/async/Observable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public final setCameraReadiness(Lcom/google/android/apps/camera/async/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness;->internalExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/module/capture/CaptureButtonReadiness$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/capture/CaptureButtonReadiness$1;-><init>(Lcom/android/camera/module/capture/CaptureButtonReadiness;Lcom/google/android/apps/camera/async/Observable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
