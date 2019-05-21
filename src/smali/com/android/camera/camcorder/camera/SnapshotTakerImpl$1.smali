.class final Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$1;
.super Ljava/lang/Object;
.source "SnapshotTakerImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->sendSnapshotRequest$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4KREC5O76Q3FEH37AT3LE9IN6EO_(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/android/camera/one/v2/command/CommandExecutorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

.field private synthetic val$futureImage:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$1;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$1;->val$futureImage:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$1;->this$0:Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->access$000(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->acquireNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v1

    .line 199
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-interface {v1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    const/16 v2, 0x100

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$1;->val$futureImage:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 203
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
