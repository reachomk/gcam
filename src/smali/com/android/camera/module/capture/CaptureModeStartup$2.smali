.class final Lcom/android/camera/module/capture/CaptureModeStartup$2;
.super Ljava/lang/Object;
.source "CaptureModeStartup.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModeStartup;->start()Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Lcom/android/camera/one/OneCamera;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModeStartup;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModeStartup;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeStartup$2;->this$0:Lcom/android/camera/module/capture/CaptureModeStartup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup$2;->this$0:Lcom/android/camera/module/capture/CaptureModeStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeStartup;->access$200(Lcom/android/camera/module/capture/CaptureModeStartup;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 100
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 91
    check-cast p1, Lcom/android/camera/one/OneCamera;

    .line 1094
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup$2;->this$0:Lcom/android/camera/module/capture/CaptureModeStartup;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeStartup;->access$200(Lcom/android/camera/module/capture/CaptureModeStartup;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method
