.class final Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;
.super Ljava/lang/Object;
.source "CaptureSessionCreator.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->prepare(Landroid/view/Surface;I)Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

.field private synthetic val$numImages:I

.field private synthetic val$result:Lcom/google/common/util/concurrent/SettableFuture;

.field private synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;Landroid/view/Surface;ILcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    iput-object p2, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;->val$surface:Landroid/view/Surface;

    iput p3, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;->val$numImages:I

    iput-object p4, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 328
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 1332
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;->val$surface:Landroid/view/Surface;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;->val$numImages:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Preparing surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "CameraCaptureSession.prepare() START"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;->val$surface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;->val$numImages:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->prepare(Landroid/view/Surface;I)V

    .line 1335
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;->this$0:Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    invoke-static {v0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "CameraCaptureSession.prepare() END"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    .line 328
    return-object v0
.end method
