.class final Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$1;
.super Ljava/lang/Object;
.source "SmartMeteringLoopStarter.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter;->start(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$meteringLoopFuture:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$1;->val$meteringLoopFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringLoopStarter$1;->val$meteringLoopFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 106
    return-void
.end method
