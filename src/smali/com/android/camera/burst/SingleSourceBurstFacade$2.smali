.class final Lcom/android/camera/burst/SingleSourceBurstFacade$2;
.super Ljava/lang/Object;
.source "SingleSourceBurstFacade.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/SingleSourceBurstFacade;->stopBurst(Lcom/android/camera/burst/BurstFacade$Source;)Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/SingleSourceBurstFacade;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/SingleSourceBurstFacade;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/burst/SingleSourceBurstFacade$2;->this$0:Lcom/android/camera/burst/SingleSourceBurstFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade$2;->this$0:Lcom/android/camera/burst/SingleSourceBurstFacade;

    invoke-static {v0}, Lcom/android/camera/burst/SingleSourceBurstFacade;->access$000(Lcom/android/camera/burst/SingleSourceBurstFacade;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->ABSENT:Lcom/android/camera/burst/BurstFacade$Source;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 109
    .line 1112
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade$2;->this$0:Lcom/android/camera/burst/SingleSourceBurstFacade;

    invoke-static {v0}, Lcom/android/camera/burst/SingleSourceBurstFacade;->access$000(Lcom/android/camera/burst/SingleSourceBurstFacade;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->ABSENT:Lcom/android/camera/burst/BurstFacade$Source;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 109
    return-void
.end method
