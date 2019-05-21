.class public final Lcom/google/android/apps/camera/async/DereferencedObservable;
.super Ljava/lang/Object;
.source "DereferencedObservable.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/async/DereferencedObservable$Level1Callback;
    }
.end annotation

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
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;>;"
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
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/apps/camera/async/DereferencedObservable;->delegate:Lcom/google/android/apps/camera/async/Observable;

    .line 21
    return-void
.end method

.method public static dereference(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/apps/camera/async/DereferencedObservable;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/async/DereferencedObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 4
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
    .line 72
    new-instance v0, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    .line 75
    new-instance v1, Lcom/google/android/apps/camera/async/SerializedExecutor;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/SerializedExecutor;-><init>()V

    .line 76
    iget-object v2, p0, Lcom/google/android/apps/camera/async/DereferencedObservable;->delegate:Lcom/google/android/apps/camera/async/Observable;

    new-instance v3, Lcom/google/android/apps/camera/async/DereferencedObservable$Level1Callback;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/google/android/apps/camera/async/DereferencedObservable$Level1Callback;-><init>(Lcom/google/android/apps/camera/async/DereferencedObservable;Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/async/Lifetime;)V

    .line 77
    invoke-interface {v2, v3, v1}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 79
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
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/camera/async/DereferencedObservable;->delegate:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    const-string v0, "DerefObs"

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/async/DereferencedObservable;->delegate:Lcom/google/android/apps/camera/async/Observable;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
