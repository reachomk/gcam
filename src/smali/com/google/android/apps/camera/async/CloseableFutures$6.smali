.class final Lcom/google/android/apps/camera/async/CloseableFutures$6;
.super Ljava/lang/Object;
.source "CloseableFutures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/CloseableFutures;->transform(Lcom/google/android/apps/camera/async/CloseableFuture;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/CloseableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$function:Lcom/google/common/base/Function;

.field private synthetic val$input:Lcom/google/android/apps/camera/async/CloseableFuture;

.field private synthetic val$output:Lcom/google/android/apps/camera/async/SettableCloseableFuture;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/CloseableFuture;Lcom/google/android/apps/camera/async/SettableCloseableFuture;Lcom/google/common/base/Function;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/apps/camera/async/CloseableFutures$6;->val$input:Lcom/google/android/apps/camera/async/CloseableFuture;

    iput-object p2, p0, Lcom/google/android/apps/camera/async/CloseableFutures$6;->val$output:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    iput-object p3, p0, Lcom/google/android/apps/camera/async/CloseableFutures$6;->val$function:Lcom/google/common/base/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$6;->val$input:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$6;->val$output:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    iget-object v1, p0, Lcom/google/android/apps/camera/async/CloseableFutures$6;->val$input:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v1}, Lcom/google/android/apps/camera/async/CloseableFuture;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 278
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$6;->val$input:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->remove()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 270
    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$6;->val$output:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->close()V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/camera/async/CloseableFutures$6;->val$function:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 274
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v1, p0, Lcom/google/android/apps/camera/async/CloseableFutures$6;->val$output:Lcom/google/android/apps/camera/async/SettableCloseableFuture;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/SettableCloseableFuture;->set(Lcom/google/android/apps/camera/async/SafeCloseable;)Z

    goto :goto_0
.end method
