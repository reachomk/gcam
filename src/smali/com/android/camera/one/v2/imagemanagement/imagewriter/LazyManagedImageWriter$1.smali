.class final Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$1;
.super Ljava/lang/Object;
.source "LazyManagedImageWriter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$availableImageCount:Lcom/google/android/apps/camera/async/ConcurrentState;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/ConcurrentState;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$1;->val$availableImageCount:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 45
    check-cast p1, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;

    .line 1048
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;->getAvailableImageCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$1;->val$availableImageCount:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 1051
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->addThreadSafeCallback(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Updatable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 1053
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$1;->val$availableImageCount:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-interface {p1}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;->getAvailableImageCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
