.class public Lcom/android/camera/stats/InstrumentationSessionRecorder;
.super Ljava/lang/Object;
.source "InstrumentationSessionRecorder.java"

# interfaces
.implements Lcom/android/camera/stats/InstrumentationSessionCloseHandler;
.implements Lcom/android/camera/stats/InstrumentationSessionFactory;
.implements Lcom/android/camera/stats/InstrumentationSessionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TSession:",
        "Lcom/android/camera/stats/InstrumentationSession;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/stats/InstrumentationSessionCloseHandler",
        "<TTSession;>;",
        "Lcom/android/camera/stats/InstrumentationSessionFactory",
        "<TTSession;>;",
        "Lcom/android/camera/stats/InstrumentationSessionList",
        "<TTSession;>;"
    }
.end annotation


# instance fields
.field private currentSession:Lcom/android/camera/stats/InstrumentationSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTSession;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final sessionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TTSession;>;"
        }
    .end annotation
.end field

.field private final sessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<TTSession;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<TTSession;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->sessionProvider:Ljavax/inject/Provider;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->lock:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->sessionList:Ljava/util/List;

    .line 36
    return-void
.end method

.method private createUnlocked()Lcom/android/camera/stats/InstrumentationSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTSession;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->sessionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/InstrumentationSession;

    .line 93
    invoke-virtual {v0, p0}, Lcom/android/camera/stats/InstrumentationSession;->setSessionCloseHandler(Lcom/android/camera/stats/InstrumentationSessionCloseHandler;)V

    .line 94
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iput-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->currentSession:Lcom/android/camera/stats/InstrumentationSession;

    .line 96
    iget-object v1, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->sessionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->currentSession:Lcom/android/camera/stats/InstrumentationSession;

    .line 86
    iget-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->sessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public create()Lcom/android/camera/stats/InstrumentationSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTSession;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->createUnlocked()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTSession;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->currentSession:Lcom/android/camera/stats/InstrumentationSession;

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->createUnlocked()Lcom/android/camera/stats/InstrumentationSession;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->currentSession:Lcom/android/camera/stats/InstrumentationSession;

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSessionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TTSession;>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->sessionList:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleClose(Lcom/android/camera/stats/InstrumentationSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSession;)V"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->currentSession:Lcom/android/camera/stats/InstrumentationSession;

    if-ne v0, p1, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->currentSession:Lcom/android/camera/stats/InstrumentationSession;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->sessionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasSessions()Z
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/InstrumentationSessionRecorder;->sessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
