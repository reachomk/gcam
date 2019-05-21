.class final Lcom/google/android/apps/camera/async/CloseableFutures$9;
.super Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;
.source "CloseableFutures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/CloseableFutures;->dereference(Lcom/google/android/apps/camera/async/CloseableFuture;)Lcom/google/android/apps/camera/async/CloseableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/ForwardingCloseableFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/CloseableFuture;Lcom/google/android/apps/camera/async/Lifetime;)V
    .locals 0

    .prologue
    .line 333
    iput-object p2, p0, Lcom/google/android/apps/camera/async/CloseableFutures$9;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;-><init>(Lcom/google/android/apps/camera/async/CloseableFuture;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/apps/camera/async/CloseableFutures$9;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 337
    invoke-super {p0}, Lcom/google/android/apps/camera/async/ForwardingCloseableFuture;->close()V

    .line 338
    return-void
.end method
