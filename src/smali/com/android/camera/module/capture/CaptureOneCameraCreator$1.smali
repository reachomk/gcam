.class final Lcom/android/camera/module/capture/CaptureOneCameraCreator$1;
.super Ljava/lang/Object;
.source "CaptureOneCameraCreator.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureOneCameraCreator;->createAndStartOneCameraAsync(Lcom/android/camera/module/OneModuleConfig;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Lcom/android/camera/ui/viewfinder/Viewfinder;",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureOneCameraCreator;

.field private synthetic val$config:Lcom/android/camera/module/OneModuleConfig;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureOneCameraCreator;Lcom/android/camera/module/OneModuleConfig;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$1;->this$0:Lcom/android/camera/module/capture/CaptureOneCameraCreator;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$1;->val$config:Lcom/android/camera/module/OneModuleConfig;

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
    .line 176
    check-cast p1, Lcom/android/camera/ui/viewfinder/Viewfinder;

    .line 1180
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$1;->this$0:Lcom/android/camera/module/capture/CaptureOneCameraCreator;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$1;->val$config:Lcom/android/camera/module/OneModuleConfig;

    iget-object v1, v1, Lcom/android/camera/module/OneModuleConfig;->viewfinderConfig:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    invoke-static {v0, v1, p1}, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->access$000(Lcom/android/camera/module/capture/CaptureOneCameraCreator;Lcom/android/camera/ui/viewfinder/ViewfinderConfig;Lcom/android/camera/ui/viewfinder/Viewfinder;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 176
    return-object v0
.end method
