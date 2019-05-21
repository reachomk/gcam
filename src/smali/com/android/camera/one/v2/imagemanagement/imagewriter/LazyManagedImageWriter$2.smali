.class final Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$2;
.super Ljava/lang/Object;
.source "LazyManagedImageWriter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter;->reserveImage(I)Lcom/google/android/apps/camera/async/CloseableFuture;
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
.field private synthetic val$imageCount:I

.field private synthetic val$result:Lcom/google/android/apps/camera/async/SettableCloseableFuture;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/SettableCloseableFuture;I)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$2;->val$result:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    iput p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$2;->val$imageCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$2;->val$result:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 88
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 76
    check-cast p1, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;

    .line 1079
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$2;->val$result:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$2;->val$result:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    iget v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/LazyManagedImageWriter$2;->val$imageCount:I

    invoke-interface {p1, v1}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;->reserveImage(I)Lcom/google/android/apps/camera/async/CloseableFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->set(Lcom/google/android/apps/camera/async/SafeCloseable;)Z

    .line 76
    :cond_0
    return-void
.end method
