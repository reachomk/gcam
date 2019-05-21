.class final Lcom/android/camera/module/videointent/state/StateStartingPreview$6;
.super Ljava/lang/Object;
.source "StateStartingPreview.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/videointent/state/StateStartingPreview;->onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;
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
        "Landroid/view/Surface;",
        "Lcom/android/camera/camcorder/CamcorderCaptureSession;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateStartingPreview;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$6;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    check-cast p1, Landroid/view/Surface;

    .line 1237
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview$6;->this$0:Lcom/android/camera/module/videointent/state/StateStartingPreview;

    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->access$000(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/android/camera/camcorder/CamcorderDevice;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/camcorder/CamcorderDevice;->createCaptureSession(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 233
    return-object v0
.end method
