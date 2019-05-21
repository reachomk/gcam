.class final Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter;
.super Ljava/lang/Object;
.source "LazyManagedImageWriter.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;


# instance fields
.field private final availableImageCount:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final futureDelegate:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final maxImages:I


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter;->futureDelegate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 37
    iput p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter;->maxImages:I

    .line 40
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 43
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$1;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$1;-><init>(Lcom/google/android/apps/camera/async/ConcurrentState;)V

    invoke-static {p1, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 61
    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter;->availableImageCount:Lcom/google/android/apps/camera/async/Observable;

    .line 62
    return-void
.end method


# virtual methods
.method public final getAvailableImageCount()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter;->availableImageCount:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public final getMaxImages()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter;->maxImages:I

    return v0
.end method

.method public final reserveImage(I)Lcom/google/android/apps/camera/async/CloseableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/apps/camera/async/CloseableFuture",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->create()Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter;->futureDelegate:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$2;

    invoke-direct {v2, v0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$2;-><init>(Lcom/google/android/apps/camera/async/SettableCloseableFuture;I)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 90
    invoke-static {v0}, Lcom/google/android/apps/camera/async/CloseableFutures;->dereference(Lcom/google/android/apps/camera/async/CloseableFuture;)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v0

    return-object v0
.end method
