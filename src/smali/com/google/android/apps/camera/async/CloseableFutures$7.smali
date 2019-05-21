.class final Lcom/google/android/apps/camera/async/CloseableFutures$7;
.super Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;
.source "CloseableFutures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/CloseableFutures;->transform(Lcom/google/android/apps/camera/async/CloseableFuture;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/CloseableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/ForwardingCloseableFuture",
        "<TO;>;"
    }
.end annotation


# instance fields
.field private synthetic val$input:Lcom/google/android/apps/camera/async/CloseableFuture;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/CloseableFuture;Lcom/google/android/apps/camera/async/CloseableFuture;)V
    .locals 0

    .prologue
    .line 282
    iput-object p2, p0, Lcom/google/android/apps/camera/async/CloseableFutures$7;->val$input:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;-><init>(Lcom/google/android/apps/camera/async/CloseableFuture;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;->close()V

    .line 286
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$7;->val$input:Lcom/google/android/apps/camera/async/CloseableFuture;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/CloseableFuture;->close()V

    .line 287
    return-void
.end method
