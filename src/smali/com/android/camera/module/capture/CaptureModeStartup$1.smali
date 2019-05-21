.class final Lcom/android/camera/module/capture/CaptureModeStartup$1;
.super Ljava/lang/Object;
.source "CaptureModeStartup.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


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
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Lcom/android/camera/module/capture/CaptureOneCameraCreator;",
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
    .line 80
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeStartup$1;->this$0:Lcom/android/camera/module/capture/CaptureModeStartup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    check-cast p1, Lcom/android/camera/module/capture/CaptureOneCameraCreator;

    .line 1084
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup$1;->this$0:Lcom/android/camera/module/capture/CaptureModeStartup;

    .line 1085
    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModeStartup;->access$000(Lcom/android/camera/module/capture/CaptureModeStartup;)Lcom/android/camera/module/OneModuleConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModeStartup$1;->this$0:Lcom/android/camera/module/capture/CaptureModeStartup;

    invoke-static {v1}, Lcom/android/camera/module/capture/CaptureModeStartup;->access$100(Lcom/android/camera/module/capture/CaptureModeStartup;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 1084
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->createAndStartOneCameraAsync(Lcom/android/camera/module/OneModuleConfig;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 80
    return-object v0
.end method
