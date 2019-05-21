.class final Lcom/android/camera/module/capture/CaptureButtonReadiness$1;
.super Ljava/lang/Object;
.source "CaptureButtonReadiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureButtonReadiness;->setCameraReadiness(Lcom/google/android/apps/camera/async/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

.field private synthetic val$cameraReadiness:Lcom/google/android/apps/camera/async/Observable;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureButtonReadiness;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$1;->this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$1;->val$cameraReadiness:Lcom/google/android/apps/camera/async/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$1;->this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->access$000(Lcom/android/camera/module/capture/CaptureButtonReadiness;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$1;->val$cameraReadiness:Lcom/google/android/apps/camera/async/Observable;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$1;->this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->access$100(Lcom/android/camera/module/capture/CaptureButtonReadiness;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 64
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$1;->this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$1;->val$cameraReadiness:Lcom/google/android/apps/camera/async/Observable;

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->access$200(Lcom/android/camera/module/capture/CaptureButtonReadiness;Lcom/google/android/apps/camera/async/Observable;)V

    .line 66
    :cond_0
    return-void
.end method
