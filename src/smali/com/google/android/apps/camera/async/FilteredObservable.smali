.class final Lcom/google/android/apps/camera/async/FilteredObservable;
.super Ljava/lang/Object;
.source "FilteredObservable.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Observable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/async/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/camera/async/FilteredObservable;->delegate:Lcom/google/android/apps/camera/async/Observable;

    .line 23
    return-void
.end method

.method public static create(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/apps/camera/async/FilteredObservable;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/async/FilteredObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    return-object v0
.end method


# virtual methods
.method public final addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/apps/camera/async/SafeCloseable;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/camera/async/FilteredObservable;->delegate:Lcom/google/android/apps/camera/async/Observable;

    new-instance v1, Lcom/google/android/apps/camera/async/FilteredObservable$1;

    invoke-direct {v1, p2, p1}, Lcom/google/android/apps/camera/async/FilteredObservable$1;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/async/Updatable;)V

    new-instance v2, Lcom/google/android/apps/camera/async/SerializedExecutor;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/SerializedExecutor;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/camera/async/FilteredObservable;->delegate:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    const-string v0, "filtered"

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/async/FilteredObservable;->delegate:Lcom/google/android/apps/camera/async/Observable;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
