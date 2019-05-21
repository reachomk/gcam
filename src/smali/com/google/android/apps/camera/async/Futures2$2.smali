.class final Lcom/google/android/apps/camera/async/Futures2$2;
.super Ljava/lang/Object;
.source "Futures2.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;TTResult;>;"
    }
.end annotation


# instance fields
.field private synthetic val$fn:Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/camera/async/Futures2$2;->val$fn:Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    check-cast p1, Ljava/util/List;

    .line 1091
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1092
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1094
    iget-object v2, p0, Lcom/google/android/apps/camera/async/Futures2$2;->val$fn:Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;

    invoke-interface {v2, v0, v1}, Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 88
    return-object v0
.end method
